using CourierManagement.Data;
using CourierManagement.DataModel;
using CourierManagement.Models;
using CourierManagement.Services;
using CourierManagement.ViewModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace CourierManagement.Controllers
{
    [Authorize(Roles = "SuperAdmin")]
    public class LookupController : Controller
    {
        private readonly CourierManagementContext _context;
        bool isSave=false;
        public LookupController(CourierManagementContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> CreateLookup(int? pageNumber)
        {
            //ViewBag.List = _context.Lookups.OrderBy(x=>x.Id).ToList();
            int pageSize = 15;
            var lookups = _context.Lookups.AsQueryable();
            var paginatedLookups = await Pagination<Lookup>.CreateAsync(lookups.OrderBy(x => x.Serial), pageNumber ?? 1, pageSize);

            return View(paginatedLookups);
        }

        public async Task<IActionResult> LoadPage(int? pageNumber)
        {
            int pageSize = 15;
            var lookups = _context.Lookups.AsQueryable();
            var paginatedLookups = await Pagination<Lookup>.CreateAsync(lookups.OrderBy(x => x.Serial), pageNumber ?? 1, pageSize);
            return PartialView("_lookupPartial", paginatedLookups);
        }

        public IActionResult GetNextSerial()
        {
            int nextSerial = _context.Lookups.Any()
                ? _context.Lookups.Max(x => x.Serial) + 1
                : 1;

            return Json(new { nextSerial = nextSerial });
        }

        [HttpPost]
        public IActionResult CreateLookup(LookupVM model)
        {
            if (model == null)
                return Json(new { success = false, message = PopupMessage.error });

            var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);

            if (model.Serial == 0)  // Changed from <= 0 to == 0
            {
                model.Serial = _context.Lookups.Any()
                    ? _context.Lookups.Max(x => x.Serial) + 1
                    : 1;
            }


            model.CreateAt = DateTime.UtcNow;
            model.UpdateAt = DateTime.UtcNow;
            model.CreateBy = GuidHelper.ToGuidOrDefault(userid);
            model.UpdateBy = GuidHelper.ToGuidOrDefault(userid);

            Lookup data = new Lookup
            {
                Name = model.Name,
                Value = model.Value,
                Type = model.Type,
                Serial = model.Serial,
                IsActive = model.IsActive,
                CreateAt = model.CreateAt,
                CreateBy = model.CreateBy,
                UpdateBy = model.UpdateBy,
                UpdateAt = model.UpdateAt
            };

            try
            {
                _context.Lookups.Add(data);
                _context.SaveChanges();
                ModelState.Clear();

                var dataResult = _context.Lookups.Where(x => x.Id == data.Id).OrderBy(x => x.Serial).ToList();

                return Json(new
                {
                    success = true,
                    message = PopupMessage.success,
                    data = dataResult,

                });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }

        public IActionResult GetUpdateLookup(LookupVM model)
        {
            if(model == null || model.Id < 1)
                return Json(new { success = false, message = PopupMessage.error });

            var result = _context.Lookups.Where(x => x.Id == model.Id).First();
            if(result == null)
                return Json(new { success = false, message = PopupMessage.error });

            return Json(new
            {
                success = true,
                message = PopupMessage.success,
                data = new
                {
                    result.Id,
                    result.IsActive,
                    result.Name,
                    result.Serial,
                    result.Type,
                    result.Value
                }

            });


        }





        [HttpPost]
        public IActionResult UpdateLookup(LookupVM model)
        {
            if (model == null || model.Id < 0)
                return Json(new { success = false, message = PopupMessage.error });

            var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);
            model.CreateBy = GuidHelper.ToGuidOrDefault(userid);
            model.UpdateBy = GuidHelper.ToGuidOrDefault(userid);

            Lookup data = _context.Lookups.Where(x => x.Id == model.Id).FirstOrDefault();
            if (data == null)
                return Json(new { success = false, message = PopupMessage.error });

            data.Name = model.Name;
            data.Value = model.Value;
            data.Type = model.Type;
            data.Serial = model.Serial;
            data.IsActive = model.IsActive;
            data.UpdateBy = model.UpdateBy;
            data.UpdateAt = model.UpdateAt;

            try
            {
                _context.Lookups.Update(data);
                _context.SaveChanges();
                ModelState.Clear();

                var dataResult = _context.Lookups.Where(x => x.Id == data.Id).OrderBy(x => x.Serial).ToList();
                return Json(new { success = true, message = PopupMessage.success, data = dataResult });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }
   

    //[HttpPost]
    public IActionResult DeleteLookup(int Id)
        {
            if(Id < 0)
                return Json(new { success = false, message = PopupMessage.error });


            var data = _context.Lookups.Where(x => x.Id == Id).FirstOrDefault();
            var updatedData = _context.Lookups.OrderBy(x => x.Serial).ToList();

            try
            {
                _context.Lookups.Remove(data);
                _context.SaveChanges();
                return Json(new { success = true, message = PopupMessage.success, data = updatedData });

            }
            catch (Exception ex) 
            {
                return Json(new { success = false, message = PopupMessage.error });

            }
        }

    }
}
