using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace SennanBuss.Accounts
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
         public string password;
         public string pass;
        Signup sg = new Signup();
        Database.DatabaseConnection db = new Database.DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("../index.aspx");
            }
        }

        protected void sendpwd_Click(object sender, EventArgs e)
        {
            string myQuery = "select * from Accounts where Username='" + usnmbox.Text + "' and Email='" + usembox.Text + "'";
            using (SqlConnection sql = new SqlConnection(db.con))
            {
               
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myQuery;
                cmd.Connection = sql;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    password = ds.Tables[0].Rows[0]["Password"].ToString();
                    pass= sg.dekryptPassword(password);
                    Sendcode(pass, usembox.Text);
                    Label2.ForeColor = System.Drawing.Color.Green;
                    Label2.Text = "Ditt lösenord har skickat till ditt konto, var vänlig och kolla din mailbox!";
                }
                else
                {
                    Label2.ForeColor = System.Drawing.Color.Red;
                    Label2.Text = "Ditt användarnamn eller Email är ogiltigt!";
                }
                sql.Close();
            }
        }


        //Skicka Lösenordet
        private void Sendcode( string password, string Email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("mohanad.oweidat@elev.ga.ntig.se", "Mohanadrambo2000");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Glömt Lösenord (Sennan Buss)";
            msg.Body = " Herr " + usnmbox.Text + ", Lösenordet för det har kontot: " + usembox.Text + " är : " + pass +  " \n\n\nMed Vänliga Hälsningar\nSennan Buss";
            string toaddress = usembox.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Sennan Buss <mohanad.oweidat@elev.ga.ntig.se>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }
        }

    }
}