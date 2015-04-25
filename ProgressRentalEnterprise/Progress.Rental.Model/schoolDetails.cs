using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Progress.Rental.Model
{
    public class schoolDetails
    {
        public int gsId { get; set; }
        public string name { get; set; }
        public string type { get; set; }
        public string gradeRange { get; set; }
        public int enrollment { get; set; }
        public int gsRating { get; set; }
        public int parentRating { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public int districtId { get; set; }
        public string district { get; set; }
        public string districtNCESId { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public string fax { get; set; }
        public string website { get; set; }
        public string ncesId { get; set; }
        public double lat { get; set; }
        public double lon { get; set; }
        public string overviewLink { get; set; }
        public string ratingsLink { get; set; }
        public string reviewsLink { get; set; }
        public double distance { get; set; }
        public string schoolStatsLink { get; set; }
    }
}
