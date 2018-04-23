using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Web_Application2.Admin
{
    public partial class uploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ID"];
            string imgfile = ProductID + ".jpg";

            imgUpload.ImageUrl = "~/Admin/ProductImages/" + imgfile;
           
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string productID = Request.QueryString["ID"];

            string imgfile = productID + ".jpg";
            string saveFolder = Server.MapPath("~/Admin/ProductImages/" + imgfile);

            btnImageUpload.SaveAs(saveFolder);
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image successfully uploaded')", true);
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ID"];
            string img = ProductID + ".jpg";
            string imgfilepath = Server.MapPath("~/Admin/ProductImages/" + img);

            try
            {
                FileInfo imgUpload = new FileInfo(imgfilepath);
                if (imgUpload.Exists)
                {
                    File.Delete(imgfilepath);
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image successfully deleted')", true);
                }
                else
                {
                    string file = Server.MapPath("~/Admin/ProductImages/" + img);
                    Console.WriteLine(File.Exists(file));
                    litDeleteError.Text = "No image is upload";
                }
            
            }
            catch (Exception errMessage)
            {
                litDeleteError.Text = errMessage.Message; 
            }
        }
    }
}