using CourierManagement.Data;
using CourierManagement.DataModel;
using CourierManagement.Models;
using CourierManagement.ViewModel;
using Microsoft.AspNetCore.Mvc;

namespace CourierManagement.Controllers
{
    public class EmployeeController : Controller
    {
        private readonly CourierManagementContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;
        public EmployeeController(CourierManagementContext context, IWebHostEnvironment Webhost)
        {
            _context = context;
            _webHostEnvironment = Webhost;

        }
        public IActionResult Employee()
        {
            ViewBag.EmpList = _context.Employee.ToList();
            return View();
        }

        [HttpPost]
        public IActionResult Employee(EmployeeVM model)
        {
            if (model == null)
                return Json(new { success = false, message = PopupMessage.error });

            Employee data = new Employee
            {
                Name = model.Name,
                Phone = model.Phone,
                Email = model.Email,
                Address = model.Address

            };

            try
            {
                _context.Employee.Add(data);
                _context.SaveChanges();
                var dataResult = _context.Employee.Where(x => x.EmployeId == data.EmployeId).OrderBy(x => x.EmployeId).ToList();
                return Json(new
                {
                    success = true,
                    message = PopupMessage.success,
                    data = dataResult,

                });
            }
            catch (Exception ex) {
                return Json(new { success = false, message = PopupMessage.error });
            }
           
        }

        public IActionResult Delete(int id)
        {
            if (id < 0)
               return Json(new { success = false, message = PopupMessage.error });

            var data = _context.Employee.Where(x => x.EmployeId == id).FirstOrDefault();

            try
            {
                _context.Employee.Remove(data);
                _context.SaveChanges();
                return Json(new { success = true, message = PopupMessage.success });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
            
        }

        public IActionResult getData(EmployeeVM model)
        {
            if (model == null || model.EmployeId < 1)
                return Json(new { success = false, message = PopupMessage.error });

            var result = _context.Employee.Where(x => x.EmployeId == model.EmployeId).First();
            if (result == null)
                return Json(new { success = false, message = PopupMessage.error });


            return Json(new
            {

                success = true,
                message = PopupMessage.success,
                data = new
                {
                    result.EmployeId,
                    result.Name,
                    result.Phone,
                    result.Email,
                    result.Address
                }
            });
        }


        public IActionResult Update(EmployeeVM model)
        {
            if (model == null || model.EmployeId < 0)
                return Json(new { success = false, message = PopupMessage.error });

            Employee data = _context.Employee.Where(x => x.EmployeId == model.EmployeId).FirstOrDefault();
            if (data == null)
                return Json(new { success = false, message = PopupMessage.error });

            data.Name = model.Name;
            data.Phone = model.Phone;
            data.Email = model.Email;
            data.Address = model.Address;

            try
            {
                _context.Employee.Update(data);
                _context.SaveChanges();

                var dataResult = _context.Employee.Where(x => x.EmployeId == data.EmployeId).ToList();

                return Json(new { success = true, message = PopupMessage.success, data = dataResult });
            }
            catch (Exception ex)
            {

                return Json(new { success = false, message = PopupMessage.error });


            }
        }


    }
}
