using SennanBuss.head;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SennanBuss
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["CurrentPage"] = "Index";
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Main.Reg(Page, "alert('Hello')");
        }
    }

}