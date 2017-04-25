using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;

namespace EL_bookstore
{

    public partial class Contacts : Inherited
    {
        //SmtpClient MailClient = new SmtpClient("host");
       // MailClient.Send(from,to,subject,body);
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtMailFrom.Text != "" && txtMailTo.Text != "" && txtSubject.Text != "" && txtBody.Text != "")
            {
                SmtpClient MailClient = new SmtpClient("localhost");
                MailMessage Email = new MailMessage();
                try
                {
                    Email.From = new MailAddress(txtMailFrom.Text);
                    Email.To.Add(txtMailTo.Text);
                    Email.Subject = txtSubject.Text;
                    Email.Body = txtBody.Text;
                    Email.IsBodyHtml = true;
                    MailClient.Send(Email);
                    lblMailMsg.Text = "Email sent";
                }
                catch (Exception)
                { lblMailMsg.Text = "Error in sending email!"; }
                txtMailFrom.Text = "";
                txtMailTo.Text = "";
                txtSubject.Text = "";
                txtBody.Text = "";
            }
        }
    }
}