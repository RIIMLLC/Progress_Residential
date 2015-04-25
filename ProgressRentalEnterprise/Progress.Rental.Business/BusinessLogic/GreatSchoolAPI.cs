using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using RestSharp;
using System.Xml;
using Progress.Rental.Model;
using Progress.Rental.Business.Common;
using Newtonsoft.Json;

namespace Progress.Rental.Business.BusinessLogic
{
    public class GreatSchoolAPI
    {
        string mc_apiKey = ApplicationConfiguration.SchoolAPIKey;
        string baseUrl = ApplicationConfiguration.BaseURL;
        string clientUrl = ApplicationConfiguration.NearBySchoolURL;
        //string baseUrl = "http://api.greatschools.org/schools/nearby?key=4vyohliuygmlzkkh7xj3raxx&address=160+Spear+St&city=San+Francisco&state=CA&zip=94105&schoolType=public-charter&levelCode=elementary-schools&radius=10&limit=100";

        public string TEst()
        {
            RestClient client = null;
            RestRequest request = null;
            /*
            client = new RestClient(baseUrl);
            request = new RestRequest(Method.GET);
            var response = client.Execute(request);
             */

            //Middle, High, Private
            client = new RestClient(baseUrl);
            request = new RestRequest(clientUrl, Method.GET);
            request.AddParameter("key", mc_apiKey);
            request.AddParameter("address", "160 Spear St");
            request.AddParameter("city", "San Francisco");
            request.AddParameter("state", "CA");
            request.AddParameter("zip", "94105");
            request.AddParameter("schoolType", "public-charter");
            request.AddParameter("levelCode", "elementary-schools");
            request.AddParameter("radius", "10");
            request.AddParameter("limit", "100");
            var response = client.Execute(request);
            var response1 = client.Execute<schoolMain>(request);
            //var model = JsonConvert.DeserializeObject<schoolMain>(response.Content);

            schoolDetails sch = new schoolDetails();
            sch.gsId = 6350;
            sch.name = "Chinese Education Center";
            sch.type = "public";
            sch.gradeRange = "K-5";
            sch.enrollment = 22;
            sch.gsRating = 3;
            sch.parentRating = 5;
            sch.city = "San Francisco";
            sch.state = "CA";
            sch.districtId = 717;
            sch.district = "San Francisco Unified School District";
            sch.districtNCESId = "0634410";
            sch.address = "657 Merchant Street, \nSan Francisco, CA  94111";
            sch.phone = "(415) 291-7918";
            sch.fax = "(415) 291-7965";
            sch.website = "cec-sfusd-ca.Schoolloop.com";
            sch.ncesId = "063441005596";
            sch.lat = 37.79493;
            sch.lon = -122.40415;
            sch.overviewLink = "overviewLink";
            sch.ratingsLink = "ratingsLink";
            sch.distance = 0.63;
            sch.schoolStatsLink = "schoolStatsLink";

            schoolDetails sch1 = new schoolDetails();
            sch1.gsId = 6350;
            sch1.name = "Chinese Education Center";
            sch1.type = "public";
            sch1.gradeRange = "K-5";
            sch1.enrollment = 22;
            sch1.gsRating = 3;
            sch1.parentRating = 5;
            sch1.city = "San Francisco";
            sch1.state = "CA";
            sch1.districtId = 717;
            sch1.district = "San Francisco Unified School District";
            sch1.districtNCESId = "0634410";
            sch1.address = "657 Merchant Street, \nSan Francisco, CA  94111";
            sch1.phone = "(415) 291-7918";
            sch1.fax = "(415) 291-7965";
            sch1.website = "cec-sfusd-ca.Schoolloop.com";
            sch1.ncesId = "063441005596";
            sch1.lat = 37.79493;
            sch1.lon = -122.40415;
            sch1.overviewLink = "overviewLink";
            sch1.ratingsLink = "ratingsLink";
            sch1.distance = 0.63;
            sch1.schoolStatsLink = "schoolStatsLink";

            List<schoolDetails> lst = new List<schoolDetails>();
            lst.Add(sch);
            lst.Add(sch1);
            schoolList schLst = new schoolList();
            schLst.school = lst;
            schoolMain school1 = new schoolMain();
            school1.schools = schLst;

            string jsonString = Newtonsoft.Json.JsonConvert.SerializeObject(school1);
            return "hellow";
        }

        public List<schoolDetails> GetNearBySchools(string address, string city, string state, string zip, string schoolType, string levelCode, int radious, int pageSize)
        {
            RestClient client = null;
            RestRequest request = null;
            schoolList schools = null;

            client = new RestClient(baseUrl);
            request = new RestRequest(clientUrl, Method.GET);
            request.AddParameter("key", mc_apiKey);
            request.AddParameter("address", address);
            request.AddParameter("city", city);
            request.AddParameter("state", state);
            request.AddParameter("zip", zip);
            request.AddParameter("schoolType", schoolType);
            request.AddParameter("levelCode", levelCode);
            request.AddParameter("radius", radious);
            request.AddParameter("limit", pageSize);
            var response = client.Execute<schoolMain>(request);
            if (response.StatusCode == System.Net.HttpStatusCode.OK)
            {
                schools = response.Data.schools;
            }

            if (schools != null)
            {
                if (levelCode == "elementary-schools")
                {

                    return schools.school.Where(y => y.gradeRange == "K-5" || y.gradeRange == "K-6" || y.gradeRange == "K-8").OrderBy(x => x.distance).Take(5).ToList();

                }
                else if (levelCode == "middle-schools")
                {
                    return schools.school.Where(y => y.gradeRange == "6-8" || y.gradeRange == "7-8" || y.gradeRange == "7-9").OrderBy(x => x.distance).Take(5).ToList(); ;

                }
                else if (levelCode == "high-schools")
                {
                    return schools.school.Where(y => y.gradeRange == "9-12" || y.gradeRange == "10-12").OrderBy(x => x.distance).Take(5).ToList(); ;

                }
                else if (levelCode == "private")
                {
                    return schools.school.OrderBy(x => x.distance).Take(5).ToList();
                }
                // babuna code was commented for getting sechools by grade filter
                //start here
                //if (schools.school != null)
                //{
                //    return schools.school.OrderBy(x => x.distance).Take(5).ToList();     // babuna code  
                //}
                // end here
            }

            return null;
        }

        public List<schoolDetails> GetNearBySchools(string address, string city, string state, string zip, string schoolType, List<string> levelCodes, int radious, int pageSize)
        {
            RestClient client = null;
            RestRequest request = null;
            schoolList schools = null;

            foreach (string lvlCode in levelCodes)
            {
                schoolList schoolList = null;
                client = new RestClient(baseUrl);
                request = new RestRequest(clientUrl, Method.GET);
                request.AddParameter("key", mc_apiKey);
                request.AddParameter("address", address);
                request.AddParameter("city", city);
                request.AddParameter("state", state);
                request.AddParameter("zip", zip);
                request.AddParameter("schoolType", schoolType);
                request.AddParameter("levelCode", lvlCode);
                request.AddParameter("radius", radious);
                request.AddParameter("limit", pageSize);
                var response = client.Execute<schoolMain>(request);
                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    schoolList = response.Data.schools;
                }

                if (schoolList != null)
                {
                    if (schools == null)
                    {
                        schools = new schoolList();
                        schools.school = new List<schoolDetails>();
                    }

                    schools.school.AddRange(schoolList.school);
                }

            }

            if (schools != null)
            {
                if (schools.school != null)
                {
                    return schools.school.OrderBy(x => x.name).ToList();
                }
            }

            return null;
        }

        public List<schoolDetails> TestCall()
        {
            schoolDetails sch = new schoolDetails();
            sch.gsId = 6350;
            sch.name = "Chinese Education Center";
            sch.type = "public";
            sch.gradeRange = "K-5";
            sch.enrollment = 22;
            sch.gsRating = 3;
            sch.parentRating = 5;
            sch.city = "San Francisco";
            sch.state = "CA";
            sch.districtId = 717;
            sch.district = "San Francisco Unified School District";
            sch.districtNCESId = "0634410";
            sch.address = "657 Merchant Street, \nSan Francisco, CA  94111";
            sch.phone = "(415) 291-7918";
            sch.fax = "(415) 291-7965";
            sch.website = "cec-sfusd-ca.Schoolloop.com";
            sch.ncesId = "063441005596";
            sch.lat = 37.79493;
            sch.lon = -122.40415;
            sch.overviewLink = "overviewLink";
            sch.ratingsLink = "ratingsLink";
            sch.distance = 0.63;
            sch.schoolStatsLink = "schoolStatsLink";

            schoolDetails sch1 = new schoolDetails();
            sch1.gsId = 6350;
            sch1.name = "Chinese Education Center";
            sch1.type = "public";
            sch1.gradeRange = "K-5";
            sch1.enrollment = 22;
            sch1.gsRating = 3;
            sch1.parentRating = 5;
            sch1.city = "San Francisco";
            sch1.state = "CA";
            sch1.districtId = 717;
            sch1.district = "San Francisco Unified School District";
            sch1.districtNCESId = "0634410";
            sch1.address = "657 Merchant Street, \nSan Francisco, CA  94111";
            sch1.phone = "(415) 291-7918";
            sch1.fax = "(415) 291-7965";
            sch1.website = "cec-sfusd-ca.Schoolloop.com";
            sch1.ncesId = "063441005596";
            sch1.lat = 37.79493;
            sch1.lon = -122.40415;
            sch1.overviewLink = "overviewLink";
            sch1.ratingsLink = "ratingsLink";
            sch1.distance = 0.63;
            sch1.schoolStatsLink = "schoolStatsLink";

            List<schoolDetails> lst = new List<schoolDetails>();
            lst.Add(sch);
            lst.Add(sch1);

            return lst;
        }
    }
}
