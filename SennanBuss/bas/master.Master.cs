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
	public partial class master : System.Web.UI.MasterPage {

    protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Btn1.Click += Btn1_Click;
                if (Session["Redirected"] != null)
                {
                    Main.Reg(Page, "ALogout()");
                    Session["Redirected"] = null;
                }
                if (Session["CurrentPage"] != null)
                {
                    Main.Reg(Page, "AddClassesToNav('" + Session["CurrentPage"] + "')");
                }
            }
        }

        

        protected void Btn1_Click(object sender, EventArgs e)
        {
            Session["Dismissed"] = "yes";
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            if (Session["CurrentPage"] != null)
            {
                string s = Session["CurrentPage"] as string;
                if (s == "UserProfile" || s == "VerifyEmail")
                {
                    Session["Redirected"] = "yes";
                    Response.Redirect("~/index.aspx");
                    return;
                }
            }
        }
    }

   
}