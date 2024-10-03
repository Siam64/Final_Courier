using System.ComponentModel.DataAnnotations;

namespace CourierManagement.ViewModel
{
    public class PriceTableVM
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string ParcelType { get; set; }
        public double BasePrice { get; set; }

        public DateTime CreateAt { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime UpdateAt { get; set; }
        public Guid UpdateBy { get; set; }
    }

}
