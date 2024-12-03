using CourierManagement.Data;
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
    }
}
