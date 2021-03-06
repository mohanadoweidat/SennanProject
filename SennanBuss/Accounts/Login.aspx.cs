﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using SennanBuss.head;

namespace SennanBuss.Accounts
{
    public partial class Login : System.Web.UI.Page
    {
       
        Database.DatabaseConnection db = new Database.DatabaseConnection();
        Signup sg = new Signup();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("../index.aspx");
                return;
               
            }
            Session["CurrentPage"] = "Login";
        }

        protected void signupbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Accounts/Signup.aspx");
        }

       
        protected void loginbtn_Click(object sender, EventArgs e)
        {
             
            string Username = usrtxtbox.Text.ToString();
            string Password = pswtxtbox.Text;
            string both = Username + Password;
            SqlConnection connection = new SqlConnection(db.con);
            connection.Open();
            string passwords = sg.EncryptPassword(Password);
            String query = "SELECT Username,Password,UType FROM Accounts WHERE (Username = '" + Username + "') AND (Password = '" + passwords + "');";
            SqlCommand cmd = new SqlCommand(query, connection);
            SqlDataAdapter sds = new SqlDataAdapter();
            DataSet ds = new DataSet();
            sds.SelectCommand = cmd;
            int i = 0;
            sds.Fill(ds, "passwords");
            if (ds.Tables[i].Rows.Count > 0)
            {
                if (ds.Tables[i].Rows[i]["UType"].ToString() == "A")
                {
                    // If you login and you are admin
                    Session["Username"] = usrtxtbox.Text.Trim();
                    Response.Redirect("../AdminPages/Bokningar.aspx");
                }
                else
                {
                    // If you log in and you are not Admin
                    Session["Username"] = usrtxtbox.Text.Trim();
                    Response.Redirect("../index.aspx");
                }
                //if (passwords == ds.Tables[i].Rows[i]["Password"].ToString())
                //{
                //    Session["Username"] = usrtxtbox.Text.Trim();
                //    Response.Redirect("../index.aspx");
                //}
            }
            else if(both != "" )  
            {
                Main.Reg(Page, "showError(1)");
                 
                clear();
            }
            else
            {
                Main.Reg(Page, "showError(23)");
            }
            connection.Close();
        }

        void clear()
        {
           usrtxtbox.Text= pswtxtbox.Text = "";
        }
        
        
    }
   
}