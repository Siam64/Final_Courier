using CourierManagement.Data;
using CourierManagement.DataModel;
using CourierManagement.Models;
using CourierManagement.ViewModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace CourierManagement.Controllers
{
    //[Authorize]
    public class ParcelController : Controller
    {
        private readonly CourierManagementContext _context;
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
    }
}
