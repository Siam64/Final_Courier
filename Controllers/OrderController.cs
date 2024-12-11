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
        public IActionResult GeneratePDF(int id)
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

            var sender = customerList.FirstOrDefault(c => c.Customer_ID == parcel.Sender_ID);
            var receiver = customerList.FirstOrDefault(c => c.Customer_ID == parcel.Receiver_ID);

            // Create a memory stream to hold the PDF
            var memoryStream = new MemoryStream();

            // Create PDF writer and document
            using (var writer = new PdfWriter(memoryStream))
            using (var pdf = new PdfDocument(writer))
            using (var document = new Document(pdf))
            {
                // Add title
                document.Add(new Paragraph("Courier Management System - Parcel Details")
                    .SetTextAlignment(TextAlignment.CENTER)
                    .SetFontSize(20));
                    

                // Parcel Information Section
                document.Add(new Paragraph("Parcel Information")
                    .SetFontSize(16)
                    .SetUnderline()
                    .SetMarginTop(20));

                var parcelInfoTable = new Table(2)
                    .UseAllAvailableWidth()
                    .SetMarginTop(10);

                // Add parcel details to the table
                AddTableRow(parcelInfoTable, "Tracking Number", parcel.TrackingNumber);
                AddTableRow(parcelInfoTable, "Parcel Type", parcel.Parcel_Type);
                AddTableRow(parcelInfoTable, "Weight", $"{parcel.Weight} kg");
                AddTableRow(parcelInfoTable, "Unit Price", $"{parcel.Unit_Price} Taka");
                AddTableRow(parcelInfoTable, "Final Price", $"{parcel.Final_Price} Taka");
                AddTableRow(parcelInfoTable, "Order Date", parcel.OrderDate.ToString("dd/MM/yyyy"));
                AddTableRow(parcelInfoTable, "Estimated Delivery", parcel.DelivaryDate.ToString("dd/MM/yyyy"));
                AddTableRow(parcelInfoTable, "Discount", $"{parcel.Discount} Taka");
                AddTableRow(parcelInfoTable, "Rider", parcel.Rider);

                document.Add(parcelInfoTable);

                // Sender Information Section
                document.Add(new Paragraph("Sender Details")
                    .SetFontSize(16)
                    .SetUnderline()
                    .SetMarginTop(20));

                var senderTable = new Table(2)
                    .UseAllAvailableWidth()
                    .SetMarginTop(10);

                AddTableRow(senderTable, "Name", sender.Customer_Name);
                AddTableRow(senderTable, "Phone", sender.Customer_Phone);
                AddTableRow(senderTable, "Email", sender.Customer_Email);
                AddTableRow(senderTable, "City", sender.Customer_City);
                AddTableRow(senderTable, "Address", sender.Customer_Address);
                AddTableRow(senderTable, "Note", string.IsNullOrEmpty(sender.Note) ? "N/A" : sender.Note);

                document.Add(senderTable);

                // Receiver Information Section
                document.Add(new Paragraph("Receiver Details")
                    .SetFontSize(16)
                    .SetUnderline()
                    .SetMarginTop(20));

                var receiverTable = new Table(2)
                    .UseAllAvailableWidth()
                    .SetMarginTop(10);

                AddTableRow(receiverTable, "Name", receiver.Customer_Name);
                AddTableRow(receiverTable, "Phone", receiver.Customer_Phone);
                AddTableRow(receiverTable, "Email", receiver.Customer_Email);
                AddTableRow(receiverTable, "City", receiver.Customer_City);
                AddTableRow(receiverTable, "Address", receiver.Customer_Address);
                AddTableRow(receiverTable, "Note", string.IsNullOrEmpty(receiver.Note) ? "N/A" : receiver.Note);

                document.Add(receiverTable);
            }

            // Return the PDF as a file
            return File(memoryStream.ToArray(), "application/pdf", $"Parcel_{parcel.TrackingNumber}.pdf");
        }
        private void AddTableRow(Table table, string label, string value)
        {
                table.AddCell(new Cell().Add(new Paragraph(label)));
                table.AddCell(new Cell().Add(new Paragraph(value)));
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
