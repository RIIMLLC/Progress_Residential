using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Progress.Rental.Business.BusinessLogic;
using Progress.Rental.Model;
using System.Web.UI;
using System.Web.Script;
using System.Net;
using System.Xml;
using GoogleMaps.LocationServices;
using System.IO;
using Progress.Rental.Logger;

namespace Progress.Rental.Controllers
{
    public class PropertyDetailsController : Controller
    {
        public ActionResult Index()
        {


            IEnumerable<Properties> propertyList = null;
            MapGeo geo = new MapGeo();
            string Latitude = string.Empty;
            string Longitude = string.Empty;

            try
            {
                string searchString = "";

                if (Request.QueryString["s"] != null)
                {
                    searchString = Request.QueryString["s"].ToString().Trim();
                }

                Session["url"] = searchString.ToString();
                ViewBag.Message = searchString;

                List<Properties> properties = new List<Properties>();
                List<BedRooms> bedrooms = new List<BedRooms>();
                List<BothRooms> bathrooms = new List<BothRooms>();
                List<string> AddressList = new List<string>();

                var matchedProperties = ProgressDataSearch.SearchProperties(searchString);

                if (matchedProperties != null)
                {
                    properties = matchedProperties.PropertyList;
                    bedrooms = matchedProperties.BedRoomList;
                    bathrooms = matchedProperties.BathRoomList;
                }

                //Set the Image for each property
                string imagePath = "";
                foreach (var property in properties)
                {
                    if (property != null)
                    {
                        //property.LinkURL = "PropertyDetails/Property?p=" + property.PropertyId.ToString() + "&k=" +  ;
                        //"Property?p= <%= Html.Encode(item.PropertyId) %>&k=<%= Html.Encode(item.Street) %>
                        AddressList.Add(property.Street);
                        if (property.Market != null)
                        {
                            imagePath = ConfigurationManager.AppSettings["Url"].ToString() + ConfigurationManager.AppSettings["BaseImageFolder"].ToString() + "/" + property.Market + "/" + property.PropertyId + "/" + ConfigurationManager.AppSettings["Imagename"].ToString();
                        }
                        else
                        {
                            imagePath = Server.MapPath("~/Images/DefaultImage.jpg");
                        }

                        if (string.IsNullOrEmpty(property.ImagePath))
                        {
                            property.ImagePath = imagePath;
                        }
                    }
                }

                Session["hai"] = properties;
                propertyList = properties as IEnumerable<Properties>;


                foreach (var item in propertyList)
                {
                    AddressList.Add(item.Street);
                }

                //Check if there is no Geo Codes available in the database for the search then Set it to display US Map
                //IF 0 then US Map otherwise based on latitude
                var isValueExists = propertyList.Where(x => Convert.ToDecimal(x.Lat) != 0 && Convert.ToDecimal(x.Lng) != 0).ToList();
                if (isValueExists != null && isValueExists.Count > 0)
                {
                    //Get any latitude as the locaiton will be the same
                    //ViewBag.LonValue = isValueExists.Select(x => x.Lng).FirstOrDefault();
                    //ViewBag.LatiValue = isValueExists.Select(x => x.Lat).FirstOrDefault();
                    Longitude = isValueExists.Select(x => x.Lng).FirstOrDefault();
                    Latitude = isValueExists.Select(x => x.Lat).FirstOrDefault();

                    geo.Latitude = Latitude;
                    geo.Longitude = Longitude;

                    ViewBag.LonValue = Latitude;
                    ViewBag.LatiValue = Longitude;

                }
                else
                {
                    //Get the default Lat and Lon to load the map
                    //ViewBag.LonValue = ConfigurationManager.AppSettings["DefaultLongitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLongitude"].ToString();
                    //ViewBag.LatiValue = ConfigurationManager.AppSettings["DefaultLatitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLatitude"].ToString();
                    Longitude = ConfigurationManager.AppSettings["DefaultLongitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLongitude"].ToString();
                    Latitude = ConfigurationManager.AppSettings["DefaultLatitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLatitude"].ToString();

                    geo.Latitude = Latitude;
                    geo.Longitude = Longitude;

                    ViewBag.LonValue = Latitude;
                    ViewBag.LatiValue = Longitude;
                }

                Session["DefaultGeoCodes"] = geo;
                ViewBag.AddressList = AddressList;
                IEnumerable<BedRooms> bed = bedrooms as IEnumerable<BedRooms>;
                IEnumerable<BothRooms> bath = bathrooms as IEnumerable<BothRooms>;

                ViewBag.property = propertyList;
                ViewBag.bed = bed;
                ViewBag.bath = bath;
                ViewBag.Total = propertyList.Count();
            }
            catch (Exception ex)
            {
                EventLog objLog = new EventLog();
                objLog.LogError(ex);
            }

            FilterSearch_index("Min Rent", "Max Rent", "Bedrooms", "Bathrooms", propertyList);
            ViewBag.Message = Session["url"].ToString();
            return View(propertyList);

        }

        public string Load_Lati_longi(string address)
        {

            var locservice = new GoogleLocationService();
            var pnt = locservice.GetLatLongFromAddress(address);

            return pnt.Latitude + "," + pnt.Longitude;

        }

       

        public ActionResult Property()
        {
            PropertyViewModel propertyViewModel = null;
            Properties property = null;
            string propertyID = "";
            string linkURL = ConfigurationManager.AppSettings["LinkURL"].ToString();
            string HeroImageName = ConfigurationManager.AppSettings["Imagename"].ToString(); ;
            int fileCount = 0;
            List<string> secondaryImages = new List<string>();
            string heroImagePath = "";

            
            List<bool> IsImageAvail = new List<bool>();        
             List<schoolDetails> schoolList = null;
            PropertyAmenities amenities = null;
            string URL = " ";
            try
            {
                if (Request.QueryString["p"] != null)
                {
                    propertyID = Request.QueryString["p"].ToString();
                }

                if (!string.IsNullOrEmpty(propertyID))
                {
                    //Prepare the Model for the view.
                    property = ProgressDataSearch.GetProperty(Convert.ToInt32(propertyID));
                    if (property != null)
                    {
                        propertyViewModel = new PropertyViewModel();

                        #region Update Image Path (Hero Image) and Geo Codes
                        if (!string.IsNullOrEmpty(property.Market))
                        {
                            if (string.IsNullOrEmpty(property.ImagePath))
                            {
                                //heroImagePath = Server.MapPath("~/Images/SiteImages/DefaultImage.jpg");
                                heroImagePath = "../../Images/SiteImages/DefaultImage.png";
                                //Check the Image pateh whether it exists or not
                                string heroImagePathExistance = "/" + ConfigurationManager.AppSettings["DynamicImageFolder"] + "/" + property.Market.ToString().Trim() + "/" + property.PropertyId.ToString().Trim() + "/" + ConfigurationManager.AppSettings["Imagename"].ToString();

                                try
                                {
                                    
                                    if (System.IO.File.Exists(Server.MapPath(heroImagePathExistance)))
                                    {
                                        heroImagePath = ConfigurationManager.AppSettings["Url"].ToString() + ConfigurationManager.AppSettings["BaseImageFolder"].ToString() + "/" + property.Market.ToString().Trim() + "/" + property.PropertyId.ToString().Trim() + "/" + ConfigurationManager.AppSettings["Imagename"].ToString();
                                    }
                                }
                                catch (Exception exHeroImage)
                                {

                                }
                                property.ImagePath = heroImagePath;
                            }
                        }
                        else
                        {
                            property.ImagePath = "../../Images/SiteImages/DefaultImage.jpg";
                        }

                        //Geo Codes Setting
                        if (string.IsNullOrEmpty(property.Lat) || Convert.ToDecimal(property.Lat) == 0)
                        {
                            property.Lng = ConfigurationManager.AppSettings["DefaultLongitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLongitude"].ToString();
                            property.Lat = ConfigurationManager.AppSettings["DefaultLatitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLatitude"].ToString();
                        }

                        propertyViewModel.Property = property;
                        #endregion

                        #region Secondary Images
                        if (!string.IsNullOrEmpty(propertyID) && !string.IsNullOrEmpty(property.Market))
                        {
                            try
                            {
                                string filePaths = "/" + ConfigurationManager.AppSettings["DynamicImageFolder"] + "/" + property.Market + "/" + property.PropertyId.ToString();
                                DirectoryInfo dInfo = new DirectoryInfo(Server.MapPath(filePaths));
                                if (dInfo != null)
                                {
                                    if (dInfo.Exists == true)
                                    {
                                        FileInfo[] fileinfo = dInfo.GetFiles("*.*");
                                        if (fileinfo.Length > 1)
                                        {
                                            fileCount = fileinfo.Length;
                                            foreach (var imageName in fileinfo)
                                            {
                                                if (imageName.ToString().ToLower() != HeroImageName.ToLower())
                                                {
                                                    //  secondaryImages.Add(imageName.ToString());
                                                    secondaryImages.Add("../" + filePaths + "/" + imageName.ToString());
                                                }
                                            }
                                        }
                                    }
                                }

                                if (fileCount > 1)
                                {
                                    propertyViewModel.SecondaryImage = secondaryImages;
                                    propertyViewModel.PropertyImageCount = fileCount;
                                }
                                else
                                {
                                    propertyViewModel.PropertyImageCount = 0;
                                }
                            }
                            catch (Exception ex)
                            {
                                propertyViewModel.PropertyImageCount = 0;
                                EventLog objLog = new EventLog();
                                objLog.LogError(ex);
                            }
                        }
                        else
                        {
                            propertyViewModel.PropertyImageCount = 0;
                        }
                        #endregion

                        #region Similar Homes
                        List<Properties> similarProperties = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.LoadSimilarHomes(property.Beds, property.Baths, property.Market, property.States, property.Zip, Convert.ToInt32(property.PropertyId));

                        //Update the imagePath
                        if (similarProperties != null && similarProperties.Count > 0)
                        {
                            foreach (Properties sProperty in similarProperties)
                            {
                                if (!string.IsNullOrEmpty(sProperty.Market))
                                {
                                    sProperty.ImagePath = ConfigurationManager.AppSettings["Url"].ToString() + ConfigurationManager.AppSettings["BaseImageFolder"].ToString() + "/" + sProperty.Market + "/" + sProperty.PropertyId.ToString().Trim() + "/" + ConfigurationManager.AppSettings["Imagename"].ToString();
                                }
                                else
                                {
                                    sProperty.ImagePath = Server.MapPath("~/Images/DefaultImage.jpg");
                                }
                            }
                        }


                        Session["Similarhomes"] = similarProperties;
                        propertyViewModel.SimilarProperty = similarProperties;
                        #endregion

                        #region Amenities Details
                        amenities = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.GetPropertyAmenities(Convert.ToInt32(property.PropertyId));
                        #endregion

                    }
                }
            }
            catch (Exception ex)
            {
                EventLog objLog = new EventLog();
                objLog.LogError(ex);
            }
            if (Session["url"] != null && Session["url"] != string.Empty)
            {
                URL = Session["url"].ToString();
            }
            ViewBag.URL = URL;
         
            ViewBag.AmenitiesDetails = amenities;
            Session["PropertyDetails_PropId"] = propertyID;
            return View(propertyViewModel);
        }

        [HttpPost]
        public ActionResult FilterSearch(string min, string max, string bedroom, string bathroom)
        {
            List<Properties> propfilter = null;
            Session["FilterProperties"] = null;
            try
            {
                //if (string.IsNullOrEmpty(min) || min == "undefined")
                //    min = "";
                //if (string.IsNullOrEmpty(min) || max == "undefined")
                //    max = "";

                if (min == "Min Rent")
                    min = "";
                if (max == "Max Rent")
                    max = "";


                if (bedroom == "Bedrooms")
                    bedroom = "";
                if (bathroom == "Bathrooms")
                    bathroom = "";

                ViewBag.Message = "Home Page";
                List<Properties> prop = (List<Properties>)Session["hai"];
                propfilter = new List<Properties>();

                /*
                var _lst = (from le in prop
                            select new
                            {
                                le.PropertyId,
                                le.Street,
                                le.Sqft,
                                le.MarketRent,
                                le.Beds,
                                le.Baths
                            }).ToList();
                */

                if (prop != null)
                {
                    var _lst = (from li in prop
                                where (bedroom == "" || li.Beds == bedroom.ToString()) &&
                                      (bathroom == "" || li.Baths == bathroom.ToString()) &&
                                      (min == "" || Convert.ToDecimal(li.MarketRent) >= Convert.ToDecimal(min.ToString())) &&
                                      (max == "" || Convert.ToDecimal(li.MarketRent) <= Convert.ToDecimal(max.ToString()))
                                select new
                                {
                                    li.PropertyId,
                                    li.Street,
                                    li.Sqft,
                                    li.MarketRent,
                                    li.Beds,
                                    li.Baths,
                                    li.City,
                                    li.States,
                                    
                                    li.Lng,
                                    li.Lat,
                                   
                                    li.ImagePath
                                }).ToList();

                    if (_lst != null)
                    {
                        foreach (var item in _lst)
                        {
                            Properties property = new Properties();
                            property.PropertyId = item.PropertyId;
                            property.Street = item.Street;
                            property.Sqft = item.Sqft;
                            property.MarketRent = item.MarketRent;
                            property.Beds = item.Beds;
                            property.Baths = item.Baths;
                            property.City = item.City;
                            property.States = item.States;
                          
                            property.Lng = item.Lng;
                            property.Lat = item.Lat;
                            
                            property.ImagePath = item.ImagePath;
                          
                            propfilter.Add(property);
                        }
                    }

                    ViewBag.tempLong = _lst[0].Lng;
                    ViewBag.tempLat = _lst[0].Lat;
                    for (int i = 0; i <= propfilter.Count; i++)
                    {
                        if (_lst[i].Lng != null && _lst[i].Lat != null && _lst[i].Lng != "0.000000000000" && _lst[i].Lat != "0.000000000000")
                        {

                            ViewBag.LonValue = _lst[i].Lng;
                            ViewBag.LatiValue = _lst[i].Lat;
                            break;
                        }
                    }
                    if (ViewBag.LonValue == null && ViewBag.LatiValue == null)
                    {
                        ViewBag.LonValue = ConfigurationManager.AppSettings["DefaultLongitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLongitude"].ToString();
                        ViewBag.LatiValue = ConfigurationManager.AppSettings["DefaultLatitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLatitude"].ToString();
                    }
                    //  ViewBag.LonValue = _lst[1].Lng;
                    //   ViewBag.LatiValue = _lst[1].Lat;


                    // end here
                    Session["Filter"] = propfilter;

                    if (propfilter.Count > 0)
                    {
                        ViewBag.property = propfilter;
                    }
                }

                if (Session[""] != null)
                {
                    ViewBag.URL = Session["url"].ToString();
                }
                else
                {
                    ViewBag.URL = "";
                }
                ViewBag.Total = propfilter.Count();
            }
            catch (Exception ex)
            {
                EventLog objLog = new EventLog();
                objLog.LogError(ex);
            }

            Session["FilterProperties"] = propfilter;

            return PartialView("PropertyList", propfilter);
            // return PartialView(propfilter);
        }


        public ActionResult AutocompleteAddress(string term)
        {
            List<string> searchResult = new List<string>();
            try
            {
                searchResult = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.AutoCompleteList(term);
            }
            catch (Exception ex)
            {
                EventLog objLog = new EventLog();
                objLog.LogError(ex);

            }

            return Json(searchResult, JsonRequestBehavior.AllowGet);
        }

        public List<Properties> getLoadImagepath(List<Properties> p)
        {
            foreach (var pp in p)
            {

            }
            return p;

        }

        public ActionResult HomeIndex()
        {
            List<Properties> properties = (List<Properties>)Session["Similarhomes"];
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

            return View(bb);

        }

        public ActionResult Help()
        {
            return RedirectToAction("Help", "Home");
        }

        public ActionResult MapBox()
        {
            List<Properties> properties = null;
            string Latitude = string.Empty;
            string Longitude = string.Empty;

            if (Session["hai"] != null)
            {
                properties = (List<Properties>)Session["hai"];
            }

            if (Session["FilterProperties"] != null)
            {
                properties = (List<Properties>)Session["FilterProperties"];
            }

            if (properties == null)
            {

            }

            MapGeo geo = null;
            if (Session["DefaultGeoCodes"] != null)
            {
                geo = (MapGeo)Session["DefaultGeoCodes"];
            }

            if (geo != null)
            {
                if (string.IsNullOrEmpty(geo.Latitude))
                {
                    Latitude = ConfigurationManager.AppSettings["DefaultLatitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLatitude"].ToString();
                }
                else
                {
                    Latitude = geo.Latitude;
                }

                if (string.IsNullOrEmpty(geo.Longitude))
                {
                    Longitude = ConfigurationManager.AppSettings["DefaultLongitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLongitude"].ToString();
                }
                else
                {
                    Longitude = geo.Longitude;
                }
            }
            else
            {
                Longitude = ConfigurationManager.AppSettings["DefaultLongitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLongitude"].ToString();
                Latitude = ConfigurationManager.AppSettings["DefaultLatitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLatitude"].ToString();
            }

            ViewBag.LonValue = Longitude;
            ViewBag.LatiValue = Latitude;
            return View(properties);
        }

        public int CheckImageCount(string market, string propertyID)
        {
            //Check the the number of file existance
            string filePaths = "";
            int fileCount = 0;
            //IF Using Local Development then USE THIS
            // filePaths = ConfigurationManager.AppSettings["DynamicImageFolder"] + "/" + market + "/" + propertyID;
            //IF SERVER THEN USE THIS
            filePaths = "~/" + ConfigurationManager.AppSettings["DynamicImageFolder"] + "/" + market + "/" + propertyID;
            try
            {
                DirectoryInfo dInfo = new DirectoryInfo(Server.MapPath(Server.MapPath(filePaths)));
                if (dInfo.Exists)
                {
                    fileCount = dInfo.GetFiles().Count();
                }
            }
            catch { }

            return fileCount;
        }

        public void Load_Sec_images(string market, string propertyID)
        {
            //Check the the number of file existance
            string filePaths = "";
            string[] fileCount = { };
            //IF Using Local Development then USE THIS
            filePaths = ConfigurationManager.AppSettings["DynamicImageFolder"] + "/" + market + "/" + propertyID;
            //IF SERVER THEN USE THIS
            filePaths = "~/" + ConfigurationManager.AppSettings["DynamicImageFolder"] + "/" + market + "/" + propertyID;
            DirectoryInfo dInfo;
            try
            {
                dInfo = new DirectoryInfo(Server.MapPath(Server.MapPath(filePaths)));
                if (dInfo.Exists)
                {

                    dInfo.GetFiles();
                    string checkimg = "check";
                }
            }
            catch { }


        }

        public ActionResult FilterSearch_index(string min, string max, string bedroom, string bathroom, IEnumerable<Properties> propty)
        {
            List<Properties> propfilter = null;
            Session["FilterProperties"] = null;
            try
            {
                //if (string.IsNullOrEmpty(min) || min == "undefined")
                //    min = "";
                //if (string.IsNullOrEmpty(min) || max == "undefined")
                //    max = "";

                if (min == "Min Rent")
                    min = "";
                if (max == "Max Rent")
                    max = "";


                if (bedroom == "Bedrooms")
                    bedroom = "";
                if (bathroom == "Bathrooms")
                    bathroom = "";

                ViewBag.Message = "Home Page";

                List<Properties> prop = new List<Properties>(propty);
                propfilter = new List<Properties>();

                /*
                var _lst = (from le in prop
                            select new
                            {
                                le.PropertyId,
                                le.Street,
                                le.Sqft,
                                le.MarketRent,
                                le.Beds,
                                le.Baths
                            }).ToList();
                */

                if (prop != null)
                {
                    var _lst = (from li in prop
                                where (bedroom == "" || li.Beds == bedroom.ToString()) &&
                                      (bathroom == "" || li.Baths == bathroom.ToString()) &&
                                      (min == "" || Convert.ToDecimal(li.MarketRent) >= Convert.ToDecimal(min.ToString())) &&
                                      (max == "" || Convert.ToDecimal(li.MarketRent) <= Convert.ToDecimal(max.ToString()))
                                select new
                                {
                                    li.PropertyId,
                                    li.Street,
                                    li.Sqft,
                                    li.MarketRent,
                                    li.Beds,
                                    li.Baths,
                                    li.City,
                                    li.States,
                                    
                                    li.Lng,
                                    li.Lat,
                                    li.ImagePath
                                }).ToList();

                    if (_lst != null)
                    {
                        foreach (var item in _lst)
                        {
                            Properties property = new Properties();
                            property.PropertyId = item.PropertyId;
                            property.Street = item.Street;
                            property.Sqft = item.Sqft;
                            property.MarketRent = item.MarketRent;
                            property.Beds = item.Beds;
                            property.Baths = item.Baths;
                            property.City = item.City;
                            property.States = item.States;
                            
                            property.Lng = item.Lng;
                            property.Lat = item.Lat;
                           
                            property.ImagePath = item.ImagePath;
                           
                            propfilter.Add(property);
                        }
                    }

                    ViewBag.tempLong = _lst[0].Lng;
                    ViewBag.tempLat = _lst[0].Lat;
                    for (int i = 0; i <= propfilter.Count; i++)
                    {
                        if (_lst[i].Lng != null && _lst[i].Lat != null && _lst[i].Lng != "0.000000000000" && _lst[i].Lat != "0.000000000000")
                        {

                            ViewBag.LonValue = _lst[i].Lng;
                            ViewBag.LatiValue = _lst[i].Lat;
                            break;
                        }
                    }
                    if (ViewBag.LonValue == null && ViewBag.LatiValue == null)
                    {
                        ViewBag.LonValue = ConfigurationManager.AppSettings["DefaultLongitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLongitude"].ToString();
                        ViewBag.LatiValue = ConfigurationManager.AppSettings["DefaultLatitude"] == null ? "" : ConfigurationManager.AppSettings["DefaultLatitude"].ToString();
                    }
                    //  ViewBag.LonValue = _lst[1].Lng;
                    //   ViewBag.LatiValue = _lst[1].Lat;


                    // end here
                    Session["Filter"] = propfilter;

                    if (propfilter.Count > 0)
                    {
                        ViewBag.property = propfilter;
                    }
                }

                if (Session[""] != null)
                {
                    ViewBag.URL = Session["url"].ToString();
                }
                else
                {
                    ViewBag.URL = "";
                }
                ViewBag.Total = propfilter.Count();
            }
            catch (Exception ex)
            {
                EventLog objLog = new EventLog();
                objLog.LogError(ex);
            }

            Session["FilterProperties"] = propfilter;

            return PartialView("PropertyList", propfilter);
            // return PartialView(propfilter);
        }
    }
}