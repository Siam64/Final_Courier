﻿using System.ComponentModel.DataAnnotations;

namespace CourierManagement.ViewModel
{
    public class EmployeeVM
    {
        public int EmployeId { get; set; }

        //[MaxLength(100)]
        public string Name { get; set; }

        [MaxLength(255)]
        public string Address { get; set; }

        [MaxLength(15)]
        public string Phone { get; set; }

        [MaxLength(100)]
        public string Email { get; set; }
    }
}
