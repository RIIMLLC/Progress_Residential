using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Progress.Rental.Business.BusinessLogic;
using Progress.Rental.Model;
using System.Xml;
using System.Net;
using System.Configuration;
using System.Net.Http;
using System.Security;
using System.Data.SqlClient;
using System.Data;
using Progress.Rental.Logger;


namespace Progress.Rental.Controllers
{

    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Home page";
            string city = ConfigurationManager.AppSettings["DefaultCity"].ToString();
            string state = ConfigurationManager.AppSettings["DefaultState"].ToString();
            string ip = "";
            try
            {
                //ip = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
                //if (ip == "" || ip == null)
                //    ip = Request.ServerVariables["REMOTE_ADDR"];

                //if (string.IsNullOrEmpty(ip))
                //{
                //    ip = Server.HtmlEncode(Request.UserHostAddress);
                //}

                //XmlDocument doc = new XmlDocument();
                //string getdetails = "http://freegeoip.net/xml/" + ip;
                //doc.Load(getdetails);
                //XmlNodeList nodeLstCity = doc.GetElementsByTagName("City");
                //XmlNodeList nodeLstregion = doc.GetElementsByTagName("RegionCode");
                //city = nodeLstCity[0].InnerText;
                //state = nodeLstregion[0].InnerText;
            }
            catch (Exception ex)
            {
                EventLog objLog = new EventLog();
                objLog.LogError(ex);
            }

            IEnumerable<Properties> aa = null;
            try
            {
                //List<Properties> properties = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.LoadDashboard(city, state);
                List<Properties> properties = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.LoadFeaturedHome(city, state);
                foreach (var pp in properties)
                {
                    string market = string.Empty;
                    if (pp.Market != null)
                    {
                        string[] Armarket = pp.Market.Split(' ');
                        if (Armarket.Count() >= 0)
                        {
                            market = Armarket[0].ToString();
                        }

                        if (pp.ImagePath == null)
                        {
                            pp.ImagePath = ConfigurationManager.AppSettings["Url"].ToString() + ConfigurationManager.AppSettings["BaseImageFolder"].ToString() + "/" + market + "/" + pp.PropertyId.Trim() + "/" + ConfigurationManager.AppSettings["Imagename"].ToString();
                        }
                    }
                    else if (pp.MarketArea != null)
                    {
                        string[] Armarket = pp.MarketArea.Split(' ');
                        if (Armarket.Count() >= 0)
                        {
                            market = Armarket[0].ToString();
                        }
                        if (pp.ImagePath == null)
                        {
                            pp.ImagePath = ConfigurationManager.AppSettings["Url"].ToString() + ConfigurationManager.AppSettings["BaseImageFolder"].ToString() + "/" + market + "/" + pp.PropertyId + "/" + ConfigurationManager.AppSettings["Imagename"].ToString();
                        }
                    }
                    else
                    {
                        if (pp.ImagePath == null)
                        {
                            pp.ImagePath = Server.MapPath("~/Images/SiteImages/DefaultImage.png");
                        }
                    }
                }

                aa = properties as IEnumerable<Properties>;

                Session.Add("prop", aa);
                List<Properties> bb = new List<Properties>();
                int count = 0;
                foreach (var b in properties)
                {
                    if (count == 3)
                    {
                        break;
                    }
                    bb.Add(b);
                    count++;
                }

                //if (string.IsNullOrEmpty(city) && string.IsNullOrEmpty(state))
                //{
                //    city = "";
                //}
                //else
                //{
                //    city = city + ", " + state;
                //}

                ViewBag.city = ConfigurationManager.AppSettings["DefaultSearchString"].ToString();
                ViewBag.IP = ip;
                ViewBag.LonValue = "8.73";
                ViewBag.LatiValue = "77.70";
            }
            catch (Exception ex1)
            {
                EventLog objLog = new EventLog();
                objLog.LogError(ex1);

            }
            Session.Add("Nextcount", 2);
            return View(aa);
        }

        public ActionResult HomeIndex()
        {
            List<Properties> properties = (List<Properties>)Session["prop"];
            List<Properties> bb = new List<Properties>();
            int count = 0;
            int checkcount = 0;
            int Nextcount = (int)Session["Nextcount"];

            foreach (var b in properties)
            {
                if (Nextcount < checkcount)
                {
                    if (count == 3)
                    {
                        break;
                    }
                    bb.Add(b);
                    count++;
                }

                checkcount++;
            }
            IEnumerable<Properties> aa = bb as IEnumerable<Properties>;
            Session.Remove("Nextcount");
            Session.Add("Nextcount", Nextcount + 3);
            if (Nextcount >= checkcount)
            {
                Session.Remove("Nextcount");
                Nextcount = 0;
                Session.Add("Nextcount", Nextcount);
            }
            if (bb.Count == 0)
            {
                Session.Remove("Nextcount");
                Session.Add("Nextcount", 0);
                properties = (List<Properties>)Session["prop"];
                bb = new List<Properties>();
                count = 0;
                checkcount = 0;
                Nextcount = (int)Session["Nextcount"];

                foreach (var b in properties)
                {
                    if (Nextcount < checkcount)
                    {
                        if (count == 3)
                        {
                            break;
                        }
                        bb.Add(b);
                        count++;
                    }

                    checkcount++;
                }
                aa = bb as IEnumerable<Properties>;
                Session.Remove("Nextcount");
                Session.Add("Nextcount", Nextcount + 3);

            }

            return View(bb);

        }

        public ActionResult About()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Testing()
        {
            List<Properties> properties = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.LoadDashboard("", "");
            return View(properties);
        }

        public ActionResult Help()
        {
            ViewBag.Message = "";
            return View();
        }

        public static List<string> SearchCustomers(string prefixText, int count, string contextKey)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["constr"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    string cmdText = "select ContactName from Customers where " +
                    "ContactName like @SearchText + '%'";
                    cmd.Parameters.AddWithValue("@SearchText", prefixText);
                    if (contextKey != "0")
                    {
                        cmdText += " and Country = @Country";
                        cmd.Parameters.AddWithValue("@Country", contextKey);
                    }
                    cmd.CommandText = cmdText;
                    cmd.Connection = conn;
                    conn.Open();
                    List<string> customers = new List<string>();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            customers.Add(sdr["ContactName"].ToString());
                        }
                    }
                    conn.Close();
                    return customers;
                }
            }
        }

        public JsonResult AutoCompleteCountry(string term)
        {
            List<AutoComplete> result = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.AutoComplete(term);
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        public ActionResult AutocompleteAddress(string term)
        {
            List<string> searchResult = new List<string>();
            searchResult = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.AutoCompleteList(term);
            return Json(searchResult, JsonRequestBehavior.AllowGet);
        }

        public ActionResult LoadFeatureHomes(string text)
        {
            string city = string.Empty;
            string state = string.Empty;
            string[] Lstary = text.Split(',');
            if (Lstary.Count() > 1)
            {
                city = Lstary[0].ToString();
                state = Lstary[1].ToString();
            }
            List<Properties> properties = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.LoadDashboard(city, state);
            return View(properties);
        }

        public ActionResult searchProperty(string s)
        {

            return RedirectToAction("Index", "PropertyDetails");
        }

        public ActionResult Careers()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Term()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult ContactUs()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult LoadPropertes()
        {
            string searchString = Request.QueryString["txtSearch"].ToString().Trim();
            return RedirectToAction("Index", "PropertyDetails", new { s = searchString });
        }
    }
}
