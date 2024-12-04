using System.ComponentModel.DataAnnotations;

namespace CourierManagement.DataModel
{
    public class Parcel
    {
        [Key]
        public int ID { get; set; }
        public Guid Parcel_ID { get; set; }
        public string Parcel_Type { get; set; }
        public double Unit_Price { get; set; }
        public double Weight { get; set; }
        public double Final_Price { get; set; }
        public double Discount { get; set; }
        public DateTime DelivaryDate { get; set; }
        public DateTime OrderDate { get; set; }
        public string TrackingNumber { get; set; }
        public string Status { get; set; }
        public Guid Sender_ID { get; set; }
        public Guid Receiver_ID { get; set; }


        public DateTime CreateAt { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime UpdateAt { get; set; }
        public Guid UpdateBy { get; set; }
    }
}
