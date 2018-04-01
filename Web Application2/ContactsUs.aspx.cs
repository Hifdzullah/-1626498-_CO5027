using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Web_Application2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {            
            // Sends email using a mail server that requires login credentials and a secure connection, e.g. gmail
            //create mail client and message with to and from address, and set message subject and body
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("mohdhifdzullah.matali@gmail.com", "mohdhifdzullah.matali@gmail.com");
            msg.Subject = txtName.Text;
            msg.Body = txtMessage.Text;
           

            //settings sepcific to the mail service, e.g. server location, port number and that ssl is required
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            //create credentials - e.g. username and password for the account
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("mohdhifdzullah.matali@gmail.com", "hifdzul1234");
            smtpClient.Credentials = credentials;

            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Send Sucess, thank you for your respond</p>";
            }
            catch (Exception)
            {
                //display the full error to the user
                litResult.Text = "<p>We are sorry, try to resend again or check your internet connection. </p>";
            }
      
        }


        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }
        protected void txtPhoneNo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtMobileNo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtSubject_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtMessage_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}