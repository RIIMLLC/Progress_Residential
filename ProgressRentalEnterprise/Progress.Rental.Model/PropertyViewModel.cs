using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Progress.Rental.Model
{
    public class PropertyViewModel
    {
        public Properties Property { get; set; }
        public List<Properties> SimilarProperty { get; set; }
        public List<string> SecondaryImage { get; set; }
        public int PropertyImageCount { get; set; }
        public List<bool> IsImageAvail { get; set; }
    }
}
