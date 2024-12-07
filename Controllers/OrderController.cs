﻿using AspNetCoreGeneratedDocument;
using CourierManagement.Data;
using CourierManagement.Models;
using CourierManagement.ViewModel;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

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
                 .OrderByDescending(x=>x.Parcel_ID)
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
