namespace CourierManagement.ViewModel
{
    public class MultiVM
    {
        public string Customer_Phone { get; set; }
        public string Customer_Name { get; set; }
        public string Customer_Email { get; set; }
        public string Customer_City { get; set; }
        public string Customer_Address { get; set; }
        public string Note { get; set; }


        public string Parcel_Type { get; set; }
        public double Unit_Price { get; set; }
        public double Weight { get; set; }
        public double Final_Price { get; set; }
        public DateTime DelivaryDate { get; set; }

    }

    public class OrderTableVM
    {

    }
}
