using SennanBuss.Accounts;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SennanBuss.UserPages
{
    public partial class UsProfile : System.Web.UI.Page
    {
        Signup sh = new Signup();
        public string db = "data source=89.221.254.34;initial catalog=MSSQL400023;persist security info=True;user id=MSSQL400023;password=OTo0OToyNg;MultipleActiveResultSets=True;App = EntityFramework";
        public string Email = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] == null)
            {
                Response.Redirect("../index.aspx");
                Session.Abandon();
            }


            Usnmae.Text = Session["Username"].ToString();
            GetUserEmail();

        }





        public void GetUserEmail()
        {
            using (SqlConnection sql = new SqlConnection(db))
            {
                string query = "Select Email From Accounts Where Username='" + Session["Username"] + "'";
                SqlCommand cm = new SqlCommand();
                cm.CommandText = query;
                cm.Connection = sql;
                SqlDataAdapter df = new SqlDataAdapter();
                df.SelectCommand = cm;
                DataSet dg = new DataSet();
                df.Fill(dg);
                if (dg.Tables[0].Rows.Count > 0)
                {

                    Email = dg.Tables[0].Rows[0]["Email"].ToString();
                    Usep.Text = Email;
                }
                else
                {

                }

            }
        }

        protected void cpwdbtn_Click(object sender, EventArgs e)
        {
            string Password = oldpwd.Text;
            string passwords = sh.EncryptPassword(Password);



            string newPassword = newpwd.Text;
            string hash1 = sh.EncryptPassword(newPassword);

            string newPasswordcon = newpwdcon.Text;
            string hash2 = sh.EncryptPassword(newPasswordcon);
            using (SqlConnection sql = new SqlConnection(db))
            {
                string Query = "Select * From Accounts";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = Query;
                cmd.Connection = sql;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                string Pass = ds.Tables[0].Rows[0]["Password"].ToString();
                sql.Close();
                if (Pass == passwords)
                {
                    if (hash1 == hash2 && passwords != "")
                    {


                        string update = "Update Accounts set Password='" + hash1 + "' where Username='" + Usnmae.Text + "'";
                        string update2 = "Update Accounts set Cpassword='" + hash2 + "' where Username='" + Usnmae.Text + "'";

                        using (SqlConnection sql1 = new SqlConnection(db))
                        {
                            SqlCommand cmd1 = new SqlCommand();
                            cmd1.CommandText = update + update2;
                            cmd1.Connection = sql1;
                            sql1.Open();
                            cmd1.ExecuteNonQuery();
                            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "success()", true);
                        }
                        

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Changeerror()", true);
                    }

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Changeerror()", true);
                }

            }
        }
                   
            
            
        
    }
}