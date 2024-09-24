using Microsoft.AspNetCore.Mvc;

namespace CourierManagement.Controllers
{
    public class ParcelController : Controller
    {
        public IActionResult Form()
        {
            return View();
        }
    }
}
