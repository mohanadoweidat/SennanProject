using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Threading;

namespace SennanBuss.Accounts
{
    public partial class Verifymail : System.Web.UI.Page
    {
        Database.DatabaseConnection db = new Database.DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "Din E-postaddress" + Request.QueryString["Epost"].ToString() + ", Var vänlig och kolla din inbox för aktiveringskoden";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(db.con))
            {
 
                string myquery = "Select * from Accounts where Email='" + Request.QueryString["Epost"] + "'";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = sqlcon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count>0)
                {
                    string Kod;
                    Kod = ds.Tables[0].Rows[0]["Kod"].ToString();
                    if (Kod == TextBox1.Text)
                    {
                        Changestatus();
                        Label4.Text = "Din Mail har bekräftats!";
                        Thread.Sleep(8);
                        Response.Redirect("../Accounts/Login.aspx");
                    }
                    else
                    {
                        Label4.Text = "Du har angtt en felaktig akteveringskod, var vänlig och kolla igen på din inbox";
                    }
                }
                sqlcon.Close();

            }

            
        }


        private void Changestatus()
        {
            using (SqlConnection sqlcon = new SqlConnection(db.con))
            {


                string Updatestat = "Update Accounts set Status='Bekräftat' where Email='" + Request.QueryString["Epost"] + "'";
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = Updatestat;
                cmd.Connection = sqlcon;
                cmd.ExecuteNonQuery();
                

            }

        }
    }
}