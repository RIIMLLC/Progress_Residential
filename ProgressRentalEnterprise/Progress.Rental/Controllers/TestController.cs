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
using System.Web.Mvc.Html;

namespace Progress.Rental.Controllers
{
    public class TestController : Controller
    {
        //
        // GET: /Test/

        public ActionResult Index()
        {
            string city = ConfigurationManager.AppSettings["DefaultCity"].ToString();
            string state = ConfigurationManager.AppSettings["DefaultState"].ToString();
            string ip = "";
            string strHostName = "";
            string errormessage = "";
            try
            {
                ip = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
                if (ip == "" || ip == null)
                    ip = Request.ServerVariables["REMOTE_ADDR"];

                if (string.IsNullOrEmpty(ip))
                {
                    ip = Server.HtmlEncode(Request.UserHostAddress);
                }
                XmlDocument doc = new XmlDocument();

                string getdetails = "http://www.freegeoip.net/xml/" + ip;
                doc.Load(getdetails);
                XmlNodeList nodeLstCity = doc.GetElementsByTagName("City");
                XmlNodeList nodeLstregion = doc.GetElementsByTagName("RegionCode");
                city = nodeLstCity[0].InnerText;
                state = nodeLstregion[0].InnerText;
                strHostName = System.Net.Dns.GetHostName();
            }
            catch (Exception ex)
            {
                errormessage = ex.Message;
            }

            List<Properties> properties = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.LoadDashboard(city, state);
            IEnumerable<Properties> aa = properties as IEnumerable<Properties>;

            if (string.IsNullOrEmpty(city) && string.IsNullOrEmpty(state))
            {
                city = "";
            }
            else
            {
                city = city + "," + state;
            }

            ViewBag.city = city;
            ViewBag.IP = ip;
            ViewBag.VisitorHostName = strHostName;
            ViewBag.ErrorMessage = errormessage;
            return View();
        }

        //
        // GET: /Test/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Test/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Test/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Test/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Test/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Test/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Test/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
