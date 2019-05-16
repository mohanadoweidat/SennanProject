using SennanBuss.head;
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
    public partial class AddTrip : System.Web.UI.Page
    {
        Database.DatabaseConnection c = new Database.DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Btn_Click(object sender, EventArgs e)
        {
            if (Fr_om.Text == "" || T_O.Text == "" || Pr_IS.Text == "" || AV_TID.Text == "" || ANK_TID.Text == "" || BU_NR.Text == "" || RES_DAT.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "EmptyFields();", true);
            }
            else
            {
                using (SqlConnection sqlConnection = new SqlConnection(c.con))
                {
                    sqlConnection.Open();
                    SqlCommand sqlCmd = new SqlCommand("TimeListAddOrEdit", sqlConnection);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(hfId.Value == "" ? "0" : hfId.Value));
                    sqlCmd.Parameters.AddWithValue("@Fr_Station", Fr_om.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@To_Station", T_O.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Price_Seat", Pr_IS.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Dep_Time", AV_TID.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Arr_Time", ANK_TID.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Buss_Nr", BU_NR.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Date_Time", RES_DAT.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "SuccessCreate();", true);
                    Clear();
                    sqlConnection.Close();
                }
                
            }
           
        }

        void Clear()
        {
            Fr_om.Text = T_O.Text = Pr_IS.Text = AV_TID.Text =  ANK_TID.Text = BU_NR.Text= "";
            hfId.Value = "";
        }
    }
}