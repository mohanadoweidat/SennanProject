using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SennanBuss.bas
{
	public partial class master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
            Btn.Click += Btn_Click;
            Btn1.Click += Btn1_Click;
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "ALogout()", true);
        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            Session["Dismissed"] = "yes";
        }

    }

   
}