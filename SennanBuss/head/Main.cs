using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace SennanBuss.head
{
    public class Main
    {

        public static void Reg(Page page, string func)
        {
            Reg(page, "text", func);
        }

        public static void Reg(Page page, string key, string func)
        {
            ScriptManager.RegisterStartupScript(page,page.GetType(),key,func,true);
        }

    }
}