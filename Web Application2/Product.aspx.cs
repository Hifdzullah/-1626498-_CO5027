using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Application2
{
    public partial class Product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ID"];
            string imgfile = ProductID + ".jpg";

            imgUpload.ImageUrl = "~/Admin/ProductImages/" + imgfile;
        }
    }
}