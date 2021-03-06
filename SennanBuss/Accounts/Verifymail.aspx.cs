﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Threading;
using SennanBuss.head;

namespace SennanBuss.Accounts
{
    public partial class Verifymail : System.Web.UI.Page
    {
        private string Email = null;
        Database.DatabaseConnection db = new Database.DatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"] == null)
            {
                Response.Redirect("../index.aspx");
                return;
            }
            string db = "data source=89.221.254.34;initial catalog=MSSQL400023;persist security info=True;user id=MSSQL400023;password=OTo0OToyNg;MultipleActiveResultSets=True;App = EntityFramework";
            using (SqlConnection sqlcon = new SqlConnection(db))
            {
                string query = "Select Status From Accounts Where Username='" + Session["Username"] + "'";
                SqlCommand cm = new SqlCommand();
                cm.CommandText = query;
                cm.Connection = sqlcon;
                SqlDataAdapter df = new SqlDataAdapter();
                df.SelectCommand = cm;
                DataSet dg = new DataSet();
                df.Fill(dg);
                if (dg.Tables[0].Rows.Count > 0)
                {
                    var v = dg.Tables[0].Rows[0]["Status"].ToString();
                    if(v == "Bekräftat")
                    {
                        Response.Redirect("../index.aspx");
                        return;
                    }
                    //Label3.Text = "Ditt Epost: " + Request.QueryString["Epost"].ToString() + ", Var vänlig och kolla din Mailbox för aktiveringskoden";
                }
            }
            Session["CurrentPage"] = "VerifyEmail";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string db = "data source=89.221.254.34;initial catalog=MSSQL400023;persist security info=True;user id=MSSQL400023;password=OTo0OToyNg;MultipleActiveResultSets=True;App = EntityFramework";
            using (SqlConnection sqlcon = new SqlConnection(db))
            {
                string query = "Select Email From Accounts Where Username='" + Session["Username"] + "'";
                SqlCommand cm = new SqlCommand();
                cm.CommandText = query;
                cm.Connection = sqlcon;
                SqlDataAdapter df = new SqlDataAdapter();
                df.SelectCommand = cm;
                DataSet dg = new DataSet();
                df.Fill(dg);
                if (dg.Tables[0].Rows.Count > 0)
                {

                    Email = dg.Tables[0].Rows[0]["Email"].ToString();

                }
                if (Email == null)
                {
                    return;
                }
                string myquery = "Select * from Accounts where Email='" +  Email + "'";

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = sqlcon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string Kod;
                    Kod = ds.Tables[0].Rows[0]["Kod"].ToString();
                    if (Kod == TextBox1.Text)
                    {
                        Changestatus();
                        Main.Reg(Page, "success1()");
                        
                        //http://localhost:8000/Accounts/Verifymail.aspx
                        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "success()", true);

                    }
                    else
                    {
                        Main.Reg(Page, "showError(24)");
                    }
                }
                sqlcon.Close();
            }
        }


       protected void Changestatus()
        {
            string db = "data source=89.221.254.34;initial catalog=MSSQL400023;persist security info=True;user id=MSSQL400023;password=OTo0OToyNg;MultipleActiveResultSets=True;App = EntityFramework";
            using (SqlConnection sqlcon = new SqlConnection(db))
            {
                string Updatestat = "Update Accounts set Status='Bekräftat' where Email='" +  Email + "'";
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = Updatestat;
                cmd.Connection = sqlcon;
                cmd.ExecuteNonQuery();
            }
        }
    }
}