using CourierManagement.Data;
using CourierManagement.DataModel;
using CourierManagement.Models;
using CourierManagement.ViewModel;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace CourierManagement.Controllers
{
    public class ParcelController : Controller
    {
        private readonly CourierManagementContext _context;
        bool isSave = false;

        public ParcelController(CourierManagementContext context)
        {
            _context = context;
        }

        public IActionResult Form()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]

        public IActionResult Form(MultimodelVM model)
        {
            var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);
            model.Customer.CreateAt = DateTime.UtcNow;
            model.Customer.UpdateAt = DateTime.UtcNow;
            model.Customer.CreateBy = GuidHelper.ToGuidOrDefault(userid);
            model.Customer.UpdateBy = GuidHelper.ToGuidOrDefault(userid);

            Customer Customerdata = new Customer();
            Parcel Parceldata = new Parcel();

            Customerdata.Customer_City = "";
            Customerdata.Customer_Name = model.Customer.Sender_Name;
            Customerdata.Customer_Phone = model.Customer.Sender_Name;
            Customerdata.Customer_Email = model.Customer.Sender_Email;
            Customerdata.Customer_Phone = model.Customer.Sender_Email;
            Customerdata.Customer_Address = model.Customer.Sender_Address;
            Customerdata.Note = model.Customer.Note;
            Customerdata.CreateAt = model.Customer.CreateAt;
            Customerdata.UpdateAt = model.Customer.UpdateAt;
            Customerdata.CreateBy = model.Customer.CreateBy;
            Customerdata.UpdateBy = model.Customer.UpdateBy;
            _context.Add(Customerdata);
            _context.SaveChanges();

            Guid SenderId = Customerdata.Customer_ID;
                            Parceldata.Sender_ID = Customerdata.Customer_ID;



            Customerdata.Customer_Name = model.Customer.Receiver_Name;
            Customerdata.Customer_Phone = model.Customer.Receiver_Name;
            Customerdata.Customer_Email = model.Customer.Receiver_Email;
            Customerdata.Customer_Phone = model.Customer.Receiver_Email;
            Customerdata.Customer_City = model.Customer.Receiver_City;
            Customerdata.Customer_Address = model.Customer.Receiver_Address;
            Customerdata.CreateAt = model.Customer.CreateAt;
            Customerdata.UpdateAt = model.Customer.UpdateAt;
            Customerdata.CreateBy = model.Customer.CreateBy;
            Customerdata.UpdateBy = model.Customer.UpdateBy;

            _context.Add(Customerdata);
            _context.SaveChanges();

            Guid ReceiverId = Customerdata.Customer_ID;
            Parceldata.Receiver_ID = ReceiverId;
            Parceldata.Sender_ID = SenderId;



            Parceldata.Parcel_Type = model.Parcel.Parcel_Type;
            Parceldata.Unit_Price = model.Parcel.Unit_Price;
            Parceldata.Weight = model.Parcel.Weight;
            Parceldata.Final_Price = model.Parcel.Final_Price;
            Parceldata.DelivaryDate = model.Parcel.DelivaryDate;
            Parceldata.CreateAt = model.Parcel.CreateAt;
            Parceldata.CreateBy = model.Parcel.CreateBy;
            Parceldata.UpdateAt = model.Parcel.UpdateAt;
            Parceldata.UpdateBy = model.Parcel.UpdateBy;

            bool IsSave=false;

           

                _context.Add(Parceldata);
                _context.SaveChanges();
                IsSave = true;
            

            

            return View(model);
        }
    }
}
