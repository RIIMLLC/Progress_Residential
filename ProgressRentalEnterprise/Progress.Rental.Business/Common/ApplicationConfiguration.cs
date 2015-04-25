using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;


namespace Progress.Rental.Business.Common
{
    public class ApplicationConfiguration
    {
        public static string BaseURL
        {
            get
            {
                string returnValue = "";
                returnValue = ConfigurationManager.AppSettings["BaseURL"] == null ? "http://api.greatschools.org" : ConfigurationManager.AppSettings["BaseURL"].ToString();
                return returnValue == "" ? "http://api.greatschools.org" : returnValue;
            }
        }

        public static string SchoolAPIKey
        {
            get
            {
                string returnValue = "";
                returnValue = ConfigurationManager.AppSettings["SchoolApiKey"] == null ? "4vyohliuygmlzkkh7xj3raxx" : ConfigurationManager.AppSettings["SchoolApiKey"].ToString();
                return returnValue == "" ? "4vyohliuygmlzkkh7xj3raxx" : returnValue;
            }
        }

        public static string NearBySchoolURL
        {
            get
            {
                string returnValue = "";
                returnValue = ConfigurationManager.AppSettings["NearBySchoolURL"] == null ? "/schools/nearby" : ConfigurationManager.AppSettings["NearBySchoolURL"].ToString();
                return returnValue == "" ? "/schools/nearby" : returnValue;
            }
        }
    }
}
