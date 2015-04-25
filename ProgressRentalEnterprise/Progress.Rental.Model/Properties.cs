using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Progress.Rental.Model
{
    public class Properties
    {
        public string PropertyId { get; set; }
        public string States { get; set; }
        public string City { get; set; }
        public string Zip { get; set; }
        public string Street { get; set; }
        public string MarketRent { get; set; }
        public string Beds { get; set; }
        public string Baths { get; set; }
        public string Sqft { get; set; }
        public string Division { get; set; }
        public string Region { get; set; }
        public string Market { get; set; }
        public string MarketArea { get; set; }
        public string ImagePath { get; set; }
        public string Lang { get; set; }
        public string Lat { get; set; }
        public string Lng { get; set; }
        public string LongDescription { get; set; }
        public string LinkURL { get; set; }
    }

    public class BothRooms
    {
        public string NoBathRooms { get; set; }
    }


    public class BedRooms
    {
        public string NoBedRooms { get; set; }
    }
    public class alllist
    {
        public string PropertyId { get; set; }
        public string States { get; set; }
        public string City { get; set; }
        public string Zip { get; set; }
        public string Street { get; set; }
        public string MarketRent { get; set; }
        public string Beds { get; set; }
        public string Baths { get; set; }
        public string Sqft { get; set; }
        public string Division { get; set; }
        public string Region { get; set; }
        public string Market { get; set; }
        public string MarketArea { get; set; }

    }
    public class AutoComplete
    {
        public string name1 { get; set; }
        public string name2 { get; set; }
        public string name3 { get; set; }
    }

}
