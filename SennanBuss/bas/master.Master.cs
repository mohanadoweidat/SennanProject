using System;
using System.Collections.Generic;
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
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
        }
    }
}