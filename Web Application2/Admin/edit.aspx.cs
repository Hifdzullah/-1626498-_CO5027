using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Application2.Admin
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ID"];
            string imgfile = ProductID + ".jpg";

            imgUpload.ImageUrl = "~/Admin/ProductImages/" + imgfile;
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}