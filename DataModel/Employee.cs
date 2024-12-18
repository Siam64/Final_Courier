﻿using System.ComponentModel.DataAnnotations;

namespace CourierManagement.DataModel
{
    public class Employee
    {
        [Key]
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
