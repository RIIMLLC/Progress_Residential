using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Progress.Rental.Model
{
    public class PropertyResult
    {
        public List<Properties> PropertyList { get; set; }
        public List<BedRooms> BedRoomList { get; set; }
        public List<BothRooms> BathRoomList { get; set; }
        
    }
}
