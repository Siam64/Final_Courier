using System.ComponentModel.DataAnnotations;

namespace CourierManagement.DataModel
{
    public class PriceTable
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string ParcelType { get; set; }
        [Required]
        public double BasePrice { get; set; }

        public DateTime CreateAt { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime UpdateAt { get; set; }
        public Guid UpdateBy { get; set; }
    }
}
