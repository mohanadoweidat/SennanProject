using SennanBuss.head;
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

           // Main.Reg(Page, "alert('ss')");
            if(Session["Redirected"] != null)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "ALogout()", true);
                Session["Redirected"] = null;
            }
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            if(Session["CurrentPage"] != null)
            {
                string s = Session["CurrentPage"] as string;
                if(s == "UserProfile" || s == "VerifyEmail")
                {
                    Response.Redirect("~/index.aspx");
                }
            }
            Session["Redirected"] = "yes";
        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            Session["Dismissed"] = "yes";
        }

    }

   
}