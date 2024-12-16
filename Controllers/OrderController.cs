using AspNetCoreGeneratedDocument;
using CourierManagement.Data;
using CourierManagement.Models;
using CourierManagement.ViewModel;
using iText.Kernel.Pdf;
using iText.Layout.Element;
using iText.Layout.Properties;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.IO;
using System;
using iText.Layout;
using iText.Kernel.Font;
using iText.Kernel.Pdf.Canvas.Draw;
using CourierManagement.Services;
using iText.Html2pdf;
using NuGet.Protocol.Plugins;


namespace CourierManagement.Controllers
{
    public class OrderController : Controller
    {
        private readonly CourierManagementContext _context;
        public OrderController(CourierManagementContext context)
        {
            _context = context;
            
        }





        [Authorize(Roles = "SuperAdmin, Admin")]
        public async Task<IActionResult> GeneratePDF(int id)
        {
            var customerList = _context.Customer
                .OrderBy(x => x.Customer_ID)
                .ToList();
            var parcel = _context.Parcel
                .FirstOrDefault(p => p.ID == id);

            if (parcel == null)
            {
                return NotFound();
            }

            // Pass the customer list to the view
            ViewData["CList"] = customerList;

            // Render the view to string
            string htmlContent = await ViewRenderer.RenderViewToStringAsync(this, "GeneratePDF", parcel);

            // Create PDF from HTML
            var memoryStream = new MemoryStream();
            ConverterProperties converterProperties = new ConverterProperties();
            HtmlConverter.ConvertToPdf(htmlContent, memoryStream, converterProperties);

            // Return the PDF
            return File(memoryStream.ToArray(), "application/pdf", $"Parcel_{parcel.TrackingNumber}.pdf");
        }


        [Authorize(Roles = "SuperAdmin, Admin")]
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




        [Authorize(Roles = "SuperAdmin, Admin")]
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

            
            parcel.Status = Status.Delivered;

            // Save changes to database
            _context.SaveChanges();


            return RedirectToAction("Shipment", "Order");
 

        }

        [Authorize(Roles = "SuperAdmin, Admin")]
        public IActionResult AssignRider()
        {
            var customerList = _context.Customer
               .OrderBy(x => x.Customer_ID)
               .ToList();

            var parcelList = _context.Parcel
                 .Where(p => p.Status != Status.Delivered && p.Status != Status.OnTheWay)
                 .ToList();

            ViewBag.Rider = _context.Employee.Select(x=>x.Name).ToList();   

            ViewData["CList"] = customerList;
            return View(parcelList);
        }

        public IActionResult UpdateStat(int id, string rider)
        {
            var parcel = _context.Parcel.Find(id);

            if(parcel == null)
            {
                return NotFound();
            }

            parcel.Status = Status.OnTheWay;
            parcel.Rider = rider;
            _context.SaveChanges();

            return RedirectToAction("AssignRider", "Order");
        }


        [HttpPost]
        public IActionResult Tracking(string tracking_item)
        {
            var parcel = _context.Parcel
                .Join(_context.Customer,
                    p => p.Sender_ID,
                    c => c.Customer_ID,
                    (p, s) => new { Parcel = p, Sender = s })
                .Join(_context.Customer,
                    ps => ps.Parcel.Receiver_ID,
                    c => c.Customer_ID,
                    (ps, r) => new
                    {
                        Parcel = ps.Parcel,
                        Sender = ps.Sender,
                        Receiver = r
                    })
                .Where(x => x.Parcel.TrackingNumber == tracking_item)
                .FirstOrDefault();

            return PartialView("_Trackingdetails", parcel);
        }
    }
}

