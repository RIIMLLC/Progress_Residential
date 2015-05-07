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
               
            }
            catch (Exception ex)
            {
                EventLog objLog = new EventLog();
                objLog.LogError(ex);
            }

            IEnumerable<Properties> aa = null;
            try
            {
                
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

                ViewBag.city = ConfigurationManager.AppSettings["DefaultSearchString"].ToString();
                ViewBag.IP = ip;
                
            }
            catch (Exception ex1)
            {
                EventLog objLog = new EventLog();
                objLog.LogError(ex1);

            }
            Session.Add("Nextcount", 2);
            if (Request.Browser.IsMobileDevice)
            {
                return View("MobileRedirecting");
            }

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
        public ActionResult LogIn()
        {
            ViewBag.Message = "";

            return View();
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
