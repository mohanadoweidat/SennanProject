using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SennanBuss
{
    public partial class kontaktaoss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["CurrentPage"] = "Contact";
        }

        protected void skbtn_Click(object sender, EventArgs e)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("mohanad.oweidat@elev.ga.ntig.se", "Mohanadrambo2000");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Meddelande från en användare!";
            msg.Body = " Meddelande från: Herr, " + nmbox.Text + ", Som har E-post: " + embox.Text + " \n " + 
                med.Value+ "'";
            msg.From = new MailAddress(embox.Text);
            msg.To.Add("mohanad.oweidat@elev.ga.ntig.se");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Meddelandet har skickats');", true);
        
          
            try
            {
                smtp.Send(msg);
            }
            catch(Exception ex)
            {
                Response.Write("Mailet Skickades inte" + ex.Message);
            }
        }
    }
}