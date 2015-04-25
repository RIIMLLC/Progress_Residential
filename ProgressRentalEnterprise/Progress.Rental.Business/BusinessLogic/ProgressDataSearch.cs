using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Progress.Rental.Model;
using Progress.Rental.DataAccess;


namespace Progress.Rental.Business.BusinessLogic
{
    public class ProgressDataSearch
    {
        public static List<Properties> LoadDashboard(string City, string State)
        {
            List<Properties> properties = SearchRepository.GetHomepageProperties(City, State);
            return properties;
        }

        public static List<Properties> LoadFeaturedHome(string City, string State)
        {
            List<Properties> properties = SearchRepository.LoadFeaturedHome(City, State);
            return properties;
        }

        public static List<Properties> LoadSimilarHomes(string beds, string baths, string City, string state, string zip, int propertyid)
        {
            List<Properties> properties = SearchRepository.GetSimilarHomes(beds, baths, City, state, zip, propertyid);
            return properties;
        }

        public static List<Properties> LoadSimilarHomesNew(string beds, string baths, string City, string state, string zip)
        {
            List<Properties> properties = SearchRepository.GetSimilarHomesNew(beds, baths, City, state, zip);
            return properties;
        }

        public static PropertyResult SearchProperties(string SearchString)
        {
            PropertyResult properties = SearchRepository.SearchProperties(SearchString);
            return properties;

        }
        public static PropertyResult serachRentHome(int SearchString)
        {
            PropertyResult properties = SearchRepository.SearchRentHome(SearchString);
            return properties;

        }
        public static List<AutoComplete> AutoComplete(string City)
        {
            List<AutoComplete> properties = SearchRepository.AutoComplete(City);
            return properties;
        }

        public static List<string> AutoCompleteList(string SearchString)
        {
            List<string> properties = SearchRepository.AutoCompleteList(SearchString);
            return properties;
        }

        public static PropertyAmenities GetPropertyAmenities(int _property_id)
        {
            return SearchRepository.GetPropertyAmenities(_property_id);
        }

        public static Properties GetProperty(int _property_id)
        {
            return SearchRepository.GetProperty(_property_id);
        }
    }
}
