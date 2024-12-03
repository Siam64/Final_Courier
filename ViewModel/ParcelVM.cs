using System.ComponentModel.DataAnnotations;

namespace CourierManagement.ViewModel
{
    public class ParcelVM
    {
        [Key]
        public int ID { get; set; }
        public Guid Parcel_ID { get; set; }

        public string Parcel_Type { get; set; }

        public double Unit_Price { get; set; }

        public double Weight { get; set; }

        public double Final_Price { get; set; }
        public string TrackingNumber { get; set; }
        public string  Status { get; set; } 

        //[Required(ErrorMessage = "This field is required")]
        public DateTime DelivaryDate { get; set; }
        public Guid Sender_ID { get; set; }
        public Guid Receiver_ID { get; set; }


        public DateTime CreateAt { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime UpdateAt { get; set; }
        public Guid UpdateBy { get; set; }
    }
}
