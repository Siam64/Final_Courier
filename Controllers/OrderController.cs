using CourierManagement.Data;
using CourierManagement.Models;
using CourierManagement.ViewModel;
using Microsoft.AspNetCore.Mvc;

namespace CourierManagement.Controllers
{
    public class OrderController : Controller
    {
        private readonly CourierManagementContext _context;
        public OrderController(CourierManagementContext context)
        {
            _context = context;
            
        }
        // Controller
        public IActionResult OrderDetails(int id) 
        {
            var customerList = _context.Customer
                .OrderBy(x => x.Customer_ID)
                .ToList();
            var parcel = _context.Parcel
                .FirstOrDefault(p => p.ID == id); 

            ViewData["CList"] = customerList;
            return View(parcel);
        }

        public IActionResult Shipment()
        {
            var customerList = _context.Customer
                .OrderBy(x => x.Customer_ID)
                .ToList();

            var parcelList = _context.Parcel
                 .Where(p => p.Status != "Delivered")
                 .ToList();

            ViewData["CList"] = customerList;
            return View(parcelList);
        }

        public IActionResult UpdateStatus(int id)
        {
            var parcel = _context.Parcel.Find(id);

            
            if (parcel == null)
            {
                return NotFound();
            }

            
            parcel.Status = "Delivered";

            // Save changes to database
            _context.SaveChanges();


            return RedirectToAction("Shipment", "Order");
 

        }
    }
}
