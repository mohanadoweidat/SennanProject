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
    public partial class AddAdmin : System.Web.UI.Page
    {
        Database.DatabaseConnection c = new Database.DatabaseConnection();
        Accounts.Signup sg = new Accounts.Signup();
        bool Nameexist = false;
        bool Emailexist = false;
        string Type = "A";

        protected void Page_Load(object sender, EventArgs e)
        {
            CreateAdminbtn.Click += CreateAdminbtn_Click;
        }

        private void CreateAdminbtn_Click(object sender, EventArgs e)
        {
            
            PasswordBox.Text = sg.EncryptPassword(PasswordBox.Text);
            if (UsernameBox.Text == "" && EmailBox.Text == "" && PasswordBox.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "EmptyFields();", true);

            }
            else
            {
                SqlConnection sql = new SqlConnection(c.con);
                sql.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from [Accounts]";
                cmd.Connection = sql;
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    if (reader[1].ToString() == UsernameBox.Text)
                    {
                        Nameexist = true;
                        break;
                    }
                    if (reader[2].ToString() == EmailBox.Text)
                    {
                        Emailexist = true;
                        break;
                    }
                }
                if (Nameexist == true)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "NameExist();", true);
                    return;
                }
                else if (Emailexist == true)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "EmailExist();", true);
                    return;
                }
                else
                {
                    using (SqlConnection sqlcon = new SqlConnection(c.con))
                    {
                        var _s = UsernameBox.Text.Trim();

                        sqlcon.Open();
                        SqlCommand sqlCmd = new SqlCommand("AccountsAddOrEdit", sqlcon);
                        sqlCmd.CommandType = CommandType.StoredProcedure;
                        sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(hfId.Value == "" ? "0" : hfId.Value));
                        sqlCmd.Parameters.AddWithValue("@Username", _s);
                        sqlCmd.Parameters.AddWithValue("@Email", EmailBox.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Password", PasswordBox.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Status", "Bekräftat");
                        sqlCmd.Parameters.AddWithValue("@Kod", "Behövs Inte");
                        sqlCmd.Parameters.AddWithValue("@UType", Type);
                        sqlCmd.ExecuteNonQuery();
                        Session["Username"] = _s;
                        clear();
                        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "ss", "SuccessCreate()", true);

                    }
                }
            }
        }

        private void clear()
        {
            UsernameBox.Text = PasswordBox.Text = EmailBox.Text = "";
            hfId.Value = "";
        }
    }
}