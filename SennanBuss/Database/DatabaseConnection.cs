using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace SennanBuss.Database
{
    public class DatabaseConnection
    {
        public string con = ConfigurationManager.ConnectionStrings["Dbconnection"].ConnectionString;
    }
}