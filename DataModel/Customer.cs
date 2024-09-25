using System.ComponentModel.DataAnnotations;

namespace CourierManagement.DataModel
{
    public class Customer
    {
        [Key]
        public int ID { get; set; }
        public Guid Customer_ID { get; set; }
        public string Customer_Phone { get; set; }
        public string Customer_Name { get; set; }
        public string Customer_Email { get; set; }
        public string Customer_City { get; set; }
        public string Customer_Address { get; set; }
        public string Note { get; set; }



        public DateTime CreateAt { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime UpdateAt { get; set; }
        public Guid UpdateBy { get; set; }

    }
}
