using CourierManagement.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using static iText.StyledXmlParser.Jsoup.Select.Evaluator;

namespace CourierManagement.Controllers
{
    [Authorize(Roles = "SuperAdmin, Admin")]
    public class ReportsController : Controller
    {
        
        private readonly CourierManagementContext _context;
        public ReportsController(CourierManagementContext context)
        {
                _context = context;
        }

        [Authorize(Roles = "SuperAdmin, Admin")]
        public IActionResult Consignment()
        {
            var customerList = _context.Customer
                .OrderBy(x => x.Customer_ID)
                .ToList();
            var parcel = _context.Parcel
                .OrderBy(x=>x.Parcel_ID)
                .ToList();

            ViewData["CList"] = customerList;
            return View(parcel);
        }

        [Authorize(Roles = "SuperAdmin, Admin")]
        public IActionResult Riders()
        {

            var riders = _context.Employee.OrderBy(x=>x.EmployeId).ToList();
            return View(riders);
        }

        [Authorize(Roles = "SuperAdmin, Admin")]
        public IActionResult AllCustomers()
        {
            var data = _context.Customer.ToList();
            return View(data);
        }
    }
}
