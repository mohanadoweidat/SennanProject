using SennanBuss.Accounts;
using SennanBuss.head;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SennanBuss.UserPages
{
    public partial class UsProfile : System.Web.UI.Page
    {
        Signup sh = new Signup();
        public string db = "data source=89.221.254.34;initial catalog=MSSQL400023;persist security info=True;user id=MSSQL400023;password=OTo0OToyNg;MultipleActiveResultSets=True;App = EntityFramework";
        private string Email = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["CurrentPage"] = "UserProfile";
                if (Session["Username"] == null)
                {
                    Response.Redirect("../index.aspx");
                    Session.Abandon();
                }
                Usnmae.Text = Session["Username"].ToString();
                LoadData();
                AccountStatus();

            }

           

        }
        
        public void LoadData()
        {
            using (SqlConnection sql = new SqlConnection(db))
            {
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
                }
                {
                    
                    
                    string cmd_last = "Select LastC From Accounts Where Username='" + Session["Username"] + "'";
                    SqlCommand cm = new SqlCommand();
                    cm.CommandText = cmd_last;
                    cm.Connection = sql;
                    SqlDataAdapter df = new SqlDataAdapter();
                    df.SelectCommand = cm;
                    DataSet dg = new DataSet();
                    df.Fill(dg);
                    
                    if (dg.Tables[0].Rows.Count > 0)
                    {
                        var a = dg.Tables[0].Rows[0]["LastC"];
                        if(a == null)
                        {
                            lbpwch.Text = "Lösenordet har inte ändrats!";
                           // lbpwch.Text = a.ToString();
                        } else 
                        {
                            //lbpwch.Text = "Lösenordet har inte ändrats!";
                             lbpwch.Text = a.ToString();
                        }
                    }
                }
            }
        }

        protected void cpwdbtn_Click(object sender, EventArgs e)
        {
            string OldP = oldpwd.Text, NewP = newpwd.Text, NewP1 = newpwdcon.Text, DP;
            if (OldP == "" || NewP == "" || NewP1 == "")
            {
                Main.Reg(Page, "showError(20)");
            }
            else
            {
                using (SqlConnection sql = new SqlConnection(db))
                {
                    string Query = "Select Password From Accounts where (Username='" + Session["Username"] + "')";
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
                if (OldP == DP)
                {
                    if (NewP == NewP1)
                    {
                        if (OldP != NewP)
                        {
                            string update = "Update Accounts set Password='" + sh.EncryptPassword(NewP) + "' where Username='" + Session["Username"] + "'";
                           
                            using (SqlConnection sql1 = new SqlConnection(db))
                            {
                                SqlCommand cmd1 = new SqlCommand();
                                cmd1.CommandText = update;
                                cmd1.Connection = sql1;
                                sql1.Open();
                                cmd1.ExecuteNonQuery();
                                //sql1.Close();

                            }
                            UpdateLastChanged();
                            
                                // TODO Success
                        }
                        else
                        {
                            Main.Reg(Page, "showError(23)");
                        }
                    }
                    else
                    {
                        Main.Reg(Page, "showError(22)");
                    }
                }
                else
                {
                    Main.Reg(Page, "showError(21)");
                }
            }
        }


        private void UpdateLastChanged()
        {
            string time = DateTime.Now.ToString();
            string update_last = "Update Accounts set LastC='"+time+"'"+"where Username='"+Session["Username"]+"'";
            using (SqlConnection sql3= new SqlConnection(db))
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = update_last;
                cmd1.Connection = sql3;
                sql3.Open();
                cmd1.ExecuteNonQuery();
                lbpwch.Text = time;

            }
        }



        private void AccountStatus()
        {
            string query = "Select Status From Accounts where Username = '" + Session["Username"] + "'";
            using(SqlConnection con = new SqlConnection(db))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
               kstatus.Text = ds.Tables[0].Rows[0]["Status"].ToString();
                
                con.Close();
            }
        }

    }
}