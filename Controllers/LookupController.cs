using CourierManagement.Data;
using CourierManagement.DataModel;
using CourierManagement.Models;
using CourierManagement.ViewModel;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace CourierManagement.Controllers
{
    public class LookupController : Controller
    {
        private readonly CourierManagementContext _context;
        bool isSave=false;
        public LookupController(CourierManagementContext context)
        {
            _context = context;
        }
        public IActionResult CreateLookup()
        {
            ViewBag.List = _context.Lookups.OrderBy(x=>x.Id).ToList();
            return View();
        }

        [HttpPost]
        public IActionResult CreateLookup(LookupVM model)
        {
            if (model == null)
                return Json(new { success = false, message = PopupMessage.error });
            
                var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);
                model.CreateAt = DateTime.UtcNow;
                model.UpdateAt = DateTime.UtcNow;
                model.CreateBy = GuidHelper.ToGuidOrDefault(userid);
                model.UpdateBy = GuidHelper.ToGuidOrDefault(userid);

                Lookup data = new Lookup();
                data.Name = model.Name;
                data.Value = model.Value;
                data.Type = model.Type;
                data.Serial = model.Serial;
                data.IsActive = model.IsActive;
                data.CreateAt = model.CreateAt;
                data.CreateBy = model.CreateBy;
                data.UpdateBy = model.UpdateBy;
                data.UpdateAt = model.UpdateAt;

                try
                {
                    _context.Lookups.Add(data);
                    _context.SaveChanges();
                    ModelState.Clear();

                    var dataResult= _context.Lookups.Where(x=>x.Id==data.Id).OrderBy(x=>x.Id).ToList();
                    return Json(new { success = true, message = PopupMessage.success, data = dataResult });

                }

                catch
                {
                    return Json(new { success = false, message = PopupMessage.error });
                }

        }
        

    }
}
