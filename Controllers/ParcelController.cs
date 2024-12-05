using CourierManagement.Data;
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

            ViewBag.ParcelType = _context.Lookups
                .Where(x => x.Type == LookupTypes.ParcelType && x.IsActive)
                .OrderBy(x => x.Serial)
                .ToList();
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


    
        [HttpPost]
        public JsonResult GetPrice(string parcelType, double weight, double discount)
        {
            try
            {
                // Get base price from PriceTable based on parcel type
                var basePrice = _context.PriceTable
                    .Where(p => p.ParcelType == parcelType)
                    .Select(p => p.BasePrice)
                    .FirstOrDefault();

                // Calculate initial price
                double initialPrice = basePrice * weight;

                // Validate discount and calculate final price
                double finalPrice;
                if (discount >= initialPrice)
                {
                    finalPrice = 0;
                }
                else
                {
                    finalPrice = initialPrice - discount;
                }

                return Json(new
                {
                    success = true,
                    unitPrice = basePrice,
                    finalPrice = finalPrice
                });
            }
            catch (Exception ex)
            {
                return Json(new
                {
                    success = false,
                    message = "Error calculating price"
                });
            }
        }


        public IActionResult Form()
        {
            // Initialize the model with empty objects
            MultimodelVM model = new MultimodelVM
            {
                SenderCustomer = new Customer(),
                ReciverCustomer = new Customer(),
                Parcels = new Parcel(),
                Customer = new CustomerVM(),
                Parcel = new ParcelVM()
            };

            ViewBag.CityList = _context.Lookups
                .Where(x => x.Type == LookupTypes.City && x.IsActive)
                .OrderBy(x => x.Serial)
                .ToList();
            ViewBag.ParcelList = _context.Lookups
                .Where(x => x.Type == LookupTypes.ParcelType && x.IsActive)
                .OrderBy(x => x.Serial)
                .ToList();

            return View(model);  // Pass the initialized model to the view
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
            try
            {
                if (model?.Customer == null || model?.Parcel == null)
                {
                    return BadRequest("Invalid data submitted");
                }

                var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);
                DateTime currentTime = DateTime.UtcNow;
                Guid userGuid = GuidHelper.ToGuidOrDefault(userid);

                // Create and save Sender Customer
                var senderCustomerData = new Customer
                {
                    Customer_ID = Guid.NewGuid(),
                    Customer_Name = model.Customer.Sender_Name,
                    Customer_Phone = model.Customer.Sender_Phone,
                    Customer_Email = model.Customer.Sender_Email,
                    Customer_City = model.Customer.Sender_City,
                    Customer_Address = model.Customer.Sender_Address,
                    Note = model.Customer.Sender_Note,
                    CreateAt = currentTime,
                    UpdateAt = currentTime,
                    CreateBy = userGuid,
                    UpdateBy = userGuid
                };
                _context.Add(senderCustomerData);
                _context.SaveChanges();

                // Create and save Receiver Customer
                var receiverCustomerData = new Customer
                {
                    Customer_ID = Guid.NewGuid(),
                    Customer_Name = model.Customer.Receiver_Name,
                    Customer_Phone = model.Customer.Receiver_Phone,
                    Customer_Email = model.Customer.Receiver_Email,
                    Customer_City = model.Customer.Receiver_City,
                    Customer_Address = model.Customer.Receiver_Address,
                    Note = model.Customer.Receiver_Note,
                    CreateAt = currentTime,
                    UpdateAt = currentTime,
                    CreateBy = userGuid,
                    UpdateBy = userGuid
                };
                _context.Add(receiverCustomerData);
                _context.SaveChanges();

                // Create and save Parcel
                var parcelData = new Parcel
                {
                    Parcel_ID = Guid.NewGuid(),
                    Sender_ID = senderCustomerData.Customer_ID,
                    Receiver_ID = receiverCustomerData.Customer_ID,
                    Parcel_Type = model.Parcel.Parcel_Type,
                    Unit_Price = model.Parcel.Unit_Price,
                    Weight = model.Parcel.Weight,
                    Final_Price = model.Parcel.Final_Price,
                    DelivaryDate = model.Parcel.DelivaryDate,
                    Discount = model.Parcel.Discount,
                    TrackingNumber = DateTime.Now.ToString("yyyyMMddHHmmss"),
                    Status = "Processing",
                    Rider = "Not Assigned Yet",
                    OrderDate = currentTime,
                    CreateAt = currentTime,
                    CreateBy = userGuid,
                    UpdateAt = currentTime,
                    UpdateBy = userGuid
                };
                _context.Add(parcelData);
                _context.SaveChanges();

                return Json(new { success = true, message = PopupMessage.success });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
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

        public IActionResult Update([FromBody] MultimodelVM model)
        {
            try
            {
                if (model?.Customer == null || model?.Parcel == null)
                {
                    return BadRequest("Invalid data submitted");
                }

                var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);
                DateTime currentTime = DateTime.UtcNow;
                Guid userGuid = GuidHelper.ToGuidOrDefault(userid);

                
                var existingParcel = _context.Parcel
                    .FirstOrDefault(p => p.ID == model.Parcel.ID);

                if (existingParcel == null)
                {
                    return NotFound("Parcel not found");
                }

                
                var existingSender = _context.Customer
                    .FirstOrDefault(c => c.Customer_ID == existingParcel.Sender_ID);

                if (existingSender != null)
                {
                    existingSender.Customer_Name = model.Customer.Sender_Name;
                    existingSender.Customer_Phone = model.Customer.Sender_Phone;
                    existingSender.Customer_Email = model.Customer.Sender_Email;
                    existingSender.Customer_City = model.Customer.Sender_City;
                    existingSender.Customer_Address = model.Customer.Sender_Address;
                    existingSender.Note = model.Customer.Sender_Note;
                    existingSender.UpdateAt = currentTime;
                    existingSender.UpdateBy = userGuid;
                    _context.Update(existingSender);
                }

                var existingReceiver = _context.Customer
                    .FirstOrDefault(c => c.Customer_ID == existingParcel.Receiver_ID);

                if (existingReceiver != null)
                {
                    existingReceiver.Customer_Name = model.Customer.Receiver_Name;
                    existingReceiver.Customer_Phone = model.Customer.Receiver_Phone;
                    existingReceiver.Customer_Email = model.Customer.Receiver_Email;
                    existingReceiver.Customer_City = model.Customer.Receiver_City;
                    existingReceiver.Customer_Address = model.Customer.Receiver_Address;
                    existingReceiver.Note = model.Customer.Receiver_Note;
                    existingReceiver.UpdateAt = currentTime;
                    existingReceiver.UpdateBy = userGuid;
                    _context.Update(existingReceiver);
                }

                existingParcel.Parcel_Type = model.Parcel.Parcel_Type;
                existingParcel.Unit_Price = model.Parcel.Unit_Price;
                existingParcel.Weight = model.Parcel.Weight;
                existingParcel.Final_Price = model.Parcel.Final_Price;
                existingParcel.DelivaryDate = model.Parcel.DelivaryDate;
                existingParcel.Discount = model.Parcel.Discount;
                existingParcel.Status = "Processing";
                existingParcel.UpdateAt = currentTime;
                existingParcel.UpdateBy = userGuid;
                _context.Update(existingParcel);

                _context.SaveChanges();
                return Json(new { success = true, message = PopupMessage.success });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }
    }
}
