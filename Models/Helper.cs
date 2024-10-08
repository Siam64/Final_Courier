﻿namespace CourierManagement.Models
{
    public class Helper
    {
    }

    public static class LookupTypes
    {
        public const string City = "City";
        public const string ParcelType = "ParcelType";


    }

    public static class PopupMessage
    {
        public const string success = "Well done";
        public const string error = "failed";
        public const string notValid = "User already exist with this number";

    }

    public static class GuidHelper
    {
        public static Guid ToGuidOrDefault(string guidString)
        {
            return !string.IsNullOrEmpty(guidString) && Guid.TryParse(guidString, out Guid guid)
                ? guid
                : Guid.Empty;
        }
    }
}
