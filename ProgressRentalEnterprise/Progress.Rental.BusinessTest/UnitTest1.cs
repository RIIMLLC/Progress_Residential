using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Progress.Rental.Business.BusinessLogic;
using Progress.Rental.Model;

namespace Progress.Rental.BusinessTest
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestLoadDashboard()
        {
            //var properties = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.LoadDashboard("", "");
            var properties = Progress.Rental.Business.BusinessLogic.ProgressDataSearch.SearchProperties("");
        
        }
    }
}
