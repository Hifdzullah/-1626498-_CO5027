using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Web_Application2
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLogEmail.Text, txtLogPassword.Text);

            if (user != null)
            {
                LoginUser(userManager, user);
            }
            else
            {
                litLoginMessage.Text = "Invalid username or password.";
            }
        }

        private void LoginUser(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["ReturnUrl"] != null)
            {
                Response.Redirect(Request.QueryString["ReturnUrl"]);
            }
            else
            {
                string userRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (userRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/index.aspx");
                }
            }
        }
    }
}
