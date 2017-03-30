using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration; 

namespace MacroHard
{
    public partial class DataReaderReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable products = (DataTable)Cache["Products"];
            //if products not in cache, recreate product cache
            if (products == null)
            {
                products = GetProductsFromDB();

                Cache.Insert("Products", products, null, DateTime.Now.AddHours(1),
                    System.Web.Caching.Cache.NoSlidingExpiration);
            }

            private DataTable GetProductsFromDB()
            {
            // Trace.Warn("Getting products from database");
            string conString = WebConfigurationManager.ConnectionStrings["Products"].ConnectionString;


            }
            
        }
    }
}