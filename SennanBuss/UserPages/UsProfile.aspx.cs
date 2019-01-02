using SennanBuss.Accounts;
using SennanBuss.head;
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
            Session["CurrentPage"] = "UserProfile";
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

        protected void SomeoneClickedThatShittyButton(object s, EventArgs e)
        {
            string OldP = oldpwd.Text, NewP = newpwd.Text, NewP1 = newpwdcon.Text, DP;
            if(OldP == "" || NewP == "" || NewP1 == "")
            {
                Main.Reg(Page, "showError(20)");
            } else
            {
                using (SqlConnection sql = new SqlConnection(db))
                {
                    string Query = "Select Password From Accounts where (Username='"+Session["Username"]+"')";
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = Query;
                    cmd.Connection = sql;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    DP = sh.dekryptPassword(ds.Tables[0].Rows[0]["Password"].ToString());
                    sql.Close();
                }
                if(OldP == DP)
                {
                    if(NewP == NewP1)
                    {
                        if(OldP != NewP)
                        {
                            string update = "Update Accounts set Password='" + sh.EncryptPassword(NewP) + "' where Username='" + Session["Username"] + "'";
                            using (SqlConnection sql1 = new SqlConnection(db))
                            {
                                SqlCommand cmd1 = new SqlCommand();
                                cmd1.CommandText = update;
                                cmd1.Connection = sql1;
                                sql1.Open();
                                cmd1.ExecuteNonQuery();
                                // TODO Success
                            }
                        } else
                        {
                            Main.Reg(Page, "showError(23)");
                        }
                    } else
                    {
                        Main.Reg(Page, "showError(22)");
                    }
                } else
                {
                    Main.Reg(Page, "showError(21)");
                }
                }
        }

    }
}