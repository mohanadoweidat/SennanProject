using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;


namespace SennanBuss.Accounts
{
    public partial class Signup : System.Web.UI.Page
    {
        Database.DatabaseConnection db = new Database.DatabaseConnection();
        bool Nameexist = false;
        bool Emailexist = false;
        static string Kod;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
                if (!string.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    int Id = Convert.ToInt32(Request.QueryString["id"]);
                    using (SqlConnection sqlcon = new SqlConnection(db.con))
                    {
                        sqlcon.Open();
                        SqlDataAdapter sqlda = new SqlDataAdapter("AccountViewById", sqlcon);
                        sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;
                        sqlda.SelectCommand.Parameters.AddWithValue("@Id", Id);
                        DataTable dtbl = new DataTable();
                        sqlda.Fill(dtbl);

                        hfId.Value = Id.ToString();
                        usrtxtbox.Text = dtbl.Rows[0][1].ToString();
                        ematxtbox.Text = dtbl.Rows[0][2].ToString();
                        pswtxtbox.Text = dtbl.Rows[0][3].ToString();
                        pswtxtbox.Attributes.Add("value", dtbl.Rows[0][3].ToString());
                        cpwdtxtbox.Text = dtbl.Rows[0][3].ToString();
                        cpwdtxtbox.Attributes.Add("value", dtbl.Rows[0][3].ToString());
                    }
                }
            }
        }



        protected void signupbtn_Click(object sender, EventArgs e)
        {
            pswtxtbox.Text = EncryptPassword(pswtxtbox.Text);
            cpwdtxtbox.Text = EncryptPassword(cpwdtxtbox.Text);
            if (usrtxtbox.Text == "" || ematxtbox.Text == "" || pswtxtbox.Text == "")
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "error()", true);


            else if (pswtxtbox.Text != cpwdtxtbox.Text)
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Passerror()", true);



            else
            {
                SqlConnection sql = new SqlConnection(db.con);
                sql.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from [Accounts]";
                cmd.Connection = sql;
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    if (reader[1].ToString() == usrtxtbox.Text)
                    {
                        Nameexist = true;
                        break;
                    }
                    if (reader[2].ToString() == ematxtbox.Text)
                    {
                        Emailexist = true;
                        break;
                    }


                }
                if (Nameexist == true)
                {
                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Nameerror()", true);

                }
                else if (Emailexist == true)
                {
                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Emailerror()", true);

                }

                else
                {


                    using (SqlConnection sqlcon = new SqlConnection(db.con))
                    {
                        Random rand = new Random();
                        Kod = rand.Next(1001,9999).ToString();
                        sqlcon.Open();
                        SqlCommand sqlCmd = new SqlCommand("AccountsAddorEdit", sqlcon);
                        sqlCmd.CommandType = CommandType.StoredProcedure;
                        sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(hfId.Value == "" ? "0" : hfId.Value));
                        sqlCmd.Parameters.AddWithValue("@Username", usrtxtbox.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Email", ematxtbox.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Password", pswtxtbox.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Cpassword", cpwdtxtbox.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Status", "Obekräftat");
                        sqlCmd.Parameters.AddWithValue("@Kod", Kod);
                        sqlCmd.ExecuteNonQuery();
                       
                        Thread.Sleep(TimeSpan.FromSeconds(2));
                        Sendcode();
                        //Clear();
                        Response.Redirect("../Accounts/Verfiymail.aspx?Epost=" + ematxtbox.Text);
                       // ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "success()", true);


                    } 
                }



            }


        }

        void Clear()
        {
            usrtxtbox.Text = ematxtbox.Text = pswtxtbox.Text = cpwdtxtbox.Text = "";
            hfId.Value = "";

        }

        private void Sendcode()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("mohanad.oweidat@elev.ga.ntig.se", "Mohanadrambo2000");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Aktiveringskod för att akrivera ditt konto";
            msg.Body = " Herr " + usrtxtbox.Text + ", Din aktiverings kod är " + Kod + " \n\n\nMed Vänliga Hälsningar\nMohanad Oweidat";
            string toaddress = ematxtbox.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Mohanad Oweidat <mohanad.oweidat@elev.ga.ntig.se>";
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


        //Enkrypt Password
        public string EncryptPassword(string pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            string enkryptedpassword = Convert.ToBase64String(bytes);
            return enkryptedpassword;
        }



        //Dekrypt Password
        private string dekryptPassword(string pass)
        {
            byte[] bytes = Convert.FromBase64String(pass);
            string dekryptpassword = System.Text.Encoding.Unicode.GetString(bytes);
            return dekryptpassword;

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}