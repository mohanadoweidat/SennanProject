using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SennanBuss.Database
{
    public class DBActions
    {
        
        public static object ExecuteScaler(string qry)
        {
            DatabaseConnection c = new DatabaseConnection();
            object ret = null;
            using (SqlConnection con = new SqlConnection(c.con))
            {
                SqlCommand cmd = new SqlCommand(qry, con);
                con.Open();
                ret = (cmd.ExecuteScalar());
                con.Close();
            }
            return ret;
        }

        public static int ExecuteNonQuery(string qry)
        {
            DatabaseConnection c = new DatabaseConnection();
            int ret = 0;
            using (SqlConnection con = new SqlConnection(c.con))
            {
                SqlCommand cmd = new SqlCommand(qry, con);
                con.Open();
                ret = Convert.ToInt32(cmd.ExecuteNonQuery());
                con.Close();
            }
            return ret;

        }
    }
}