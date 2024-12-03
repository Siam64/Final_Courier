﻿using CourierManagement.Data;
using CourierManagement.DataModel;
using CourierManagement.Models;
using CourierManagement.ViewModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;
using System.IO;

namespace CourierManagement.Controllers
{
    //[Authorize]
    public class ParcelController : Controller
    {
        private readonly CourierManagementContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;
        public ParcelController(CourierManagementContext context, IWebHostEnvironment Webhost)
        {
            _context = context;
            _webHostEnvironment = Webhost;

        }

        public IActionResult PriceTable()
        {
            ViewBag.PriceList = _context.PriceTable.ToList();
            return View();
        }
        [HttpPost]
        public IActionResult PriceTable(PriceTableVM model)
        {
            if (model == null)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
            var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);
            model.CreateAt = DateTime.UtcNow;
            model.UpdateAt = DateTime.UtcNow;
            model.CreateBy = GuidHelper.ToGuidOrDefault(userid);
            model.UpdateBy = GuidHelper.ToGuidOrDefault(userid);

            PriceTable data = new PriceTable();
            data.ParcelType = model.ParcelType;
            data.BasePrice = model.BasePrice;
            data.CreateAt = model.CreateAt;
            data.CreateBy = model.CreateBy;
            data.UpdateBy = model.UpdateBy;
            data.UpdateAt = model.UpdateAt;

            try
            {
                _context.PriceTable.Add(data);
                _context.SaveChanges();
                var newdata = _context.PriceTable.Where(x => x.Id == data.Id).OrderBy(x => x.Id).ToList();

                return Json(new { success = true, message = PopupMessage.success, nData= newdata });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }


        public IActionResult deletePrice(int Id)
        {
            if (Id < 0)
                return Json(new { success = false, message = PopupMessage.error });

            var data = _context.PriceTable.Where(x => x.Id == Id).FirstOrDefault();
            try
            {
                _context.PriceTable.Remove(data);
                _context.SaveChanges();
                return Json(new { success = true, message = PopupMessage.success });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }

        public IActionResult getDataForupdate(PriceTableVM model)
        {
            if (model == null || model.Id < 1)
                return Json(new { success = false, message = PopupMessage.error });

            var result = _context.PriceTable.Where(x => x.Id == model.Id).First();
            if (result == null)
                return Json(new { success = false, message = PopupMessage.error });

            return Json(new
            {
                success = true,
                message = PopupMessage.success,
                data = new
                {
                   result.Id,
                   result.ParcelType,
                   result.BasePrice
                }

            });
            
        }


        public IActionResult updatePriceTable(PriceTableVM model)
        {
            if (model == null || model.Id < 0)
                return Json(new { success = false, message = PopupMessage.error });

            var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);
            model.CreateBy = GuidHelper.ToGuidOrDefault(userid);
            model.UpdateBy = GuidHelper.ToGuidOrDefault(userid);

            PriceTable data = _context.PriceTable.Where(x=>x.Id == model.Id).FirstOrDefault();
            if (data == null)
                return Json(new { success = false, message = PopupMessage.error });

            data.ParcelType = model.ParcelType;
            data.BasePrice = model.BasePrice;

            try
            {
                _context.PriceTable.Update(data);
                _context.SaveChanges();

                var dataResult = _context.PriceTable.Where(x => x.Id == data.Id).OrderBy(x => x.Id).ToList();
                return Json(new { success = true, message = PopupMessage.success, data = dataResult });
            }
            catch (Exception ex) { 

                return Json(new {success = false, message = PopupMessage.error});
            
            
            }
        }


        public IActionResult ImageUpload()
        {
            return View();
        }

        [HttpPost]
        //[Route("samiul")]
        public IActionResult ImageUpload(IFormFile img)
        {
            if (img != null && img.Length > 0)
            {
                string projecfile = Directory.GetCurrentDirectory();
                var uploadsFolderPath = Path.Combine(Directory.GetCurrentDirectory(), _webHostEnvironment.WebRootPath, "UploadedFile");
                if (!Directory.Exists(uploadsFolderPath))
                {
                    Directory.CreateDirectory(uploadsFolderPath);
                }
                var fileName = Path.GetFileName(img.FileName);
                var path = Path.Combine(uploadsFolderPath, fileName);

                using (var stream = new FileStream(path, FileMode.Create))
                {
                    img.CopyTo(stream);
                }

                return Json(new { success = true, fileName = fileName });

            }
            return Json(new { success = false, message = "File upload failed." });
        }





        [HttpPost]
        public IActionResult DeleteImage(string fileName)
        {
            var sessionFileName = HttpContext.Session.GetString("UploadedFile");
            if (!string.IsNullOrEmpty(sessionFileName) && sessionFileName == fileName)
            {
                var path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/UploadedImages", fileName);

                if (System.IO.File.Exists(path))
                {
                    System.IO.File.Delete(path);
                    HttpContext.Session.Remove("UploadedFile");
                    return Json(new { success = true });
                }
            }
            return Json(new { success = false, message = "File deletion failed." });
        }




        public IActionResult Form()
        {
            ViewBag.CityList = _context.Lookups
                .Where(x=>x.Type == LookupTypes.City && x.IsActive)
                .OrderBy(x=>x.Serial)
                .ToList();

            ViewBag.ParcelList = _context.Lookups
                .Where(x => x.Type == LookupTypes.ParcelType && x.IsActive)
                .OrderBy(x => x.Serial)
                .ToList();
            return View();
        }

        public IActionResult OrderTable()
        {
            var customerList = _context.Customer
                .OrderBy(x => x.Customer_ID)
                .ToList();

            var parcelList = _context.Parcel
                .OrderByDescending(x => x.CreateAt)  
                .ToList();

            ViewData["CList"] = customerList;
            return View(parcelList);
        }



        [HttpPost]
        [ValidateAntiForgeryToken]

        public IActionResult Form([FromBody] MultimodelVM model)
        {
            var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);
            model.Customer.CreateAt = DateTime.UtcNow;
            model.Customer.UpdateAt = DateTime.UtcNow;
            model.Customer.CreateBy = GuidHelper.ToGuidOrDefault(userid);
            model.Customer.UpdateBy = GuidHelper.ToGuidOrDefault(userid);

            Customer SenderCustomerdata = new Customer();
            Customer ReceiverCustomerdata = new Customer();
            Parcel Parceldata = new Parcel();

            if (ModelState.IsValid)
            {
                SenderCustomerdata.Customer_ID = Guid.NewGuid();
                SenderCustomerdata.Customer_Name = model.Customer.Sender_Name;
                SenderCustomerdata.Customer_Phone = model.Customer.Sender_Phone;
                SenderCustomerdata.Customer_Email = model.Customer.Sender_Email;
                SenderCustomerdata.Customer_City = model.Customer.Sender_City;
                SenderCustomerdata.Customer_Address = model.Customer.Sender_Address;
                SenderCustomerdata.Note = model.Customer.Sender_Note;
                SenderCustomerdata.CreateAt = model.Customer.CreateAt;
                SenderCustomerdata.UpdateAt = model.Customer.UpdateAt;
                SenderCustomerdata.CreateBy = model.Customer.CreateBy;
                SenderCustomerdata.UpdateBy = model.Customer.UpdateBy;

                _context.Add(SenderCustomerdata);
                _context.SaveChanges();
            }
            else { 
            
            }

            Parceldata.Sender_ID = SenderCustomerdata.Customer_ID;

            if (ModelState.IsValid)
            {
                ReceiverCustomerdata.Customer_ID = Guid.NewGuid();
                ReceiverCustomerdata.Customer_Name = model.Customer.Receiver_Name;
                ReceiverCustomerdata.Customer_Phone = model.Customer.Receiver_Phone;
                ReceiverCustomerdata.Customer_Email = model.Customer.Receiver_Email;
                ReceiverCustomerdata.Customer_City = model.Customer.Receiver_City;
                ReceiverCustomerdata.Customer_Address = model.Customer.Receiver_Address;
                ReceiverCustomerdata.Note = model.Customer.Receiver_Note;
                ReceiverCustomerdata.CreateAt = model.Customer.CreateAt;
                ReceiverCustomerdata.UpdateAt = model.Customer.UpdateAt;
                ReceiverCustomerdata.CreateBy = model.Customer.CreateBy;
                ReceiverCustomerdata.UpdateBy = model.Customer.UpdateBy;

                _context.Add(ReceiverCustomerdata);
                _context.SaveChanges();
            }
            else
            {

            }

            Parceldata.Receiver_ID = ReceiverCustomerdata.Customer_ID;


            if (ModelState.IsValid)
            {
                Parceldata.Parcel_ID = Guid.NewGuid();
                Parceldata.Parcel_Type = model.Parcel.Parcel_Type;
                Parceldata.Unit_Price = model.Parcel.Unit_Price;
                Parceldata.Weight = model.Parcel.Weight;
                Parceldata.Final_Price = model.Parcel.Final_Price;
                Parceldata.DelivaryDate = model.Parcel.DelivaryDate;
                Parceldata.TrackingNumber = DateTime.Now.ToString("yyyyMMddHHmmss");
                Parceldata.Status = "Processing";
                Parceldata.OrderDate = DateTime.UtcNow;
                Parceldata.CreateAt = model.Customer.CreateAt;
                Parceldata.CreateBy = model.Customer.CreateBy;
                Parceldata.UpdateAt = model.Customer.UpdateAt;
                Parceldata.UpdateBy = model.Customer.UpdateBy;

                _context.Add(Parceldata);
                _context.SaveChanges();
            }
            else { 
            
            }
            return View(model);
        }


        public IActionResult Edit(int id)
        {
            MultimodelVM model = new MultimodelVM();
            model.Parcels = _context.Parcel.Where(x => x.ID == id).FirstOrDefault();
            if (model.Parcels.Receiver_ID != Guid.Empty && model.Parcels.Sender_ID != Guid.Empty) { 
            
                model.ReciverCustomer = _context.Customer.Where(x=>x.Customer_ID == model.Parcels.Receiver_ID).FirstOrDefault();
                model.SenderCustomer = _context.Customer.Where(x=>x.Customer_ID == model.Parcels.Sender_ID).FirstOrDefault();
            }

            ViewBag.CityList = _context.Lookups
                .Where(x => x.Type == LookupTypes.City && x.IsActive)
                .OrderBy(x => x.Serial)
                .ToList();

            ViewBag.ParcelList = _context.Lookups
                .Where(x => x.Type == LookupTypes.ParcelType && x.IsActive)
                .OrderBy(x => x.Serial)
                .ToList();

            return View("Form",model);
        }
    }
}
