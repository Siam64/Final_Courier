﻿using System.ComponentModel.DataAnnotations;

namespace CourierManagement.ViewModel
{
    public class CustomerVM
    {
        [Key]
        public int ID { get; set; }
        public Guid Sender_ID { get; set; }

        public string Sender_Phone { get; set; }

        public string Sender_Name { get; set; }

        public string Sender_Email { get; set; }

        public string Sender_City { get; set; }

        public string Sender_Address { get; set; }

        public string Sender_Note { get; set; }


        public Guid Receiver_ID { get; set; }

        public string Receiver_Phone { get; set; }

        public string Receiver_Name { get; set; }

        public string Receiver_Email { get; set; }

        public string Receiver_City { get; set; }

        public string Receiver_Address { get; set; }

        public string Receiver_Note { get; set; }



        public DateTime CreateAt { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime UpdateAt { get; set; }
        public Guid UpdateBy { get; set; }
    }

    public class MultimodelVM
    {
        public CustomerVM Customer { get; set; }
        public ParcelVM Parcel { get; set; }
    }
}
