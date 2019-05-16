using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SennanBuss.AdminPages
{
    public partial class AdminManage : System.Web.UI.Page
       
    {
        Database.DatabaseConnection c = new Database.DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(c.con))
            {
                connection.Open();
                string query = "SELECT Id,Username,Email FROM Accounts";
                SqlDataAdapter da = new SqlDataAdapter(query,connection);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                //Show Data
                GridView1.DataBind();
                connection.Close();
            }
        }
    }
}