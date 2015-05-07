using System.Web;
using System.Web.Optimization;

namespace Progress.Rental
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/OtherJS").Include(
                        "~/Scripts/jquery.placeholder.js",
                        "~/Scripts/bootstrap.js",
                        "~/Scripts/jquery.touchSwipe.min.js",
                        //"~/Scripts/infobox.js",
                        "~/Scripts/jquery.visible.js",
                      //  "~/Scripts/home.js",
                        "~/Scripts/DropDown.js",
                        "~/Scripts/jquery.flexisel.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryui").Include(
                        "~/Scripts/jquery-ui-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.unobtrusive*",
                        "~/Scripts/jquery.validate*"));

            bundles.Add(new ScriptBundle("~/bundles/js").Include(
                        "~/Scripts/js/bootstrap.js"
                        ));

            bundles.Add(new ScriptBundle("~/bundles/jsOther").Include(
                        "~/Scripts/jsOther/bootstrap.js",
                        "~/Scripts/jsOther/ddmenu.js",
                        "~/Scripts/jsOther/bootstrap.min.js",
                      //  "~/Scripts/jsOther/home.js",
                        //"~/Scripts/jsOther/infobox.js",
                        "~/Scripts/jsOther/jquery.cycle.all.js",
                        "~/Scripts/jsOther/touchswipe.min.js",
                        "~/Scripts/jsOther/flexisel.js",
                        "~/Scripts/jsOther/placeholder.js",
                        "~/Scripts/jsOther/jquery.touchswipe.min.js",
                        "~/Scripts/jsOther/jquery.unobstrusive-ajax.js",
                        "~/Scripts/jsOther/jquery.unobstrusive-ajax.min.js",
                        "~/Scripts/jsOther/jquery.validate-vsdoc.js",
                        "~/Scripts/jsOther/jquery.validate.js",
                        "~/Scripts/jsOther/jquery.validate.min.js",
                        "~/Scripts/jsOther/jquery.validate.unobstrusive.js",
                        "~/Scripts/jsOther/jquery.validate.unobstrusive..min.js",
                        "~/Scripts/jsOther/jquery.visible.js",
                        "~/Scripts/jsOther/knockout-2.1.0.debug.js",
                        "~/Scripts/jsOther/knockout-2.2.0.debug.js",
                        "~/Scripts/jsOther/knockout-2.1.0.js",
                        "~/Scripts/jsOther/knockout-2.2.0.js",
                        "~/Scripts/jsOther/modernizr-2.5.3.js",
                        "~/Scripts/jsOther/modernizr-2.6.2.js",
                        "~/Scripts/jsOther/ProgressRentalv1.0.js"
                        ));

            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new StyleBundle("~/Content/css").Include("~/Content/style.css",
                                       "~/Content/simple-line-icons.css",
                                       "~/Content/hscroll.css",
                                       "~/Content/fullscreen-slider.css",
                                       "~/Content/font-awesome.css",
                                       "~/Content/cust.css",
                                       "~/Content/cbootstrap.css",
                                       "~/Content/bootstrap.css",
                                       "~/Content/add.css"));

            bundles.Add(new StyleBundle("~/Content/sitecss").Include(
                  "~/Content/css/style.css",
                  "~/Content/css/simple-line-icons.css",
                  "~/Content/css/hscroll.css",
                  "~/Content/css/fullscreen-slider.css",
                  "~/Content/css/font-awesome.css",
                  "~/Content/css/cust.css",
                  "~/Content/css/cbootstrap.css",
                  "~/Content/css/bootstrap.css",
                  "~/Content/css/add.css",
                  "~/Content/css/jquery_006.css",
                  "~/Content/css/jquery.css",
                  "~/Content/css/jquery_004.css",
                  "~/Content/css/jquery_010.css",
                  "~/Content/css/jquery_002.css",
                  "~/Content/css/jquery_007.css",
                  "~/Content/css/query_009.css",
                  "~/Content/css/jquery_012.css",
                  "~/Content/css/jquery_008.css",
                  "~/Content/css/jquery_005.css",
                  "~/Content/css/jquery_003.css",
                  "~/Content/css/jquery_011.css"
                  ));

            bundles.Add(new StyleBundle("~/Content/cssOther").Include(
                                      "~/Content/cssOther/add.css",
                                       "~/Content/cssOther/bootstrap.css",
                                        "~/Content/cssOther/bootstrap_002.css",
                                         "~/Content/cssOther/cbootstrap.css",
                                         "~/Content/cssOther/cust.css",
                                         "~/Content/cssOther/font-awesome.css",
                                         "~/Content/cssOther/fullscreen-slider.css",
                                         "~/Content/cssOther/hscroll.css",
                                          "~/Content/cssOther/jquery_006.css",
                                      "~/Content/cssOther/jquery.css",
                                      "~/Content/cssOther/jquery_004.css",
                                      "~/Content/cssOther/jquery_010.css",
                                      "~/Content/cssOther/jquery_002.css",
                                      "~/Content/cssOther/jquery_007.css",
                                      "~/Content/cssOther/query_009.css",
                                      "~/Content/cssOther/jquery_012.css",
                                      "~/Content/cssOther/jquery_008.css",
                                      "~/Content/cssOther/jquery_005.css",
                                      "~/Content/cssOther/jquery_003.css",
                                      "~/Content/cssOther/jquery_011.css",
                                      "~/Content/cssOther/mapbox.css",
                                      "~/Content/cssOther/MapBoxLocal.css",
                                      "~/Content/cssOther/newsk.css",
                                      "~/Content/cssOther/simple-line-icons.css",
                                      "~/Content/cssOther/slider.css",
                                      "~/Content/cssOther/style.css",
                                      "~/Content/cssOther/styles.css",
                                        "~/Content/cssOther/Zoomslider.css",
                                        "~/Content/cssOther/ddmenu.css",
                                         "~/Content/cssOther/fervor.css",
                                         "~/Content/cssOther/fervor-search.css"
                                      ));


            bundles.Add(new StyleBundle("~/Content/themes/base/css").Include(
                        "~/Content/themes/base/jquery.ui.core.css",
                        "~/Content/themes/base/jquery.ui.resizable.css",
                        "~/Content/themes/base/jquery.ui.selectable.css",
                        "~/Content/themes/base/jquery.ui.accordion.css",
                        "~/Content/themes/base/jquery.ui.autocomplete.css",
                        "~/Content/themes/base/jquery.ui.button.css",
                        "~/Content/themes/base/jquery.ui.dialog.css",
                        "~/Content/themes/base/jquery.ui.slider.css",
                        "~/Content/themes/base/jquery.ui.tabs.css",
                        "~/Content/themes/base/jquery.ui.datepicker.css",
                        "~/Content/themes/base/jquery.ui.progressbar.css",
                        "~/Content/themes/base/jquery.ui.theme.css"));
        }
    }
}