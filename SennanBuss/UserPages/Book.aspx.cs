using SennanBuss.Database;
using SennanBuss.head;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SennanBuss.UserPages
{
    public partial class Book : System.Web.UI.Page
    {
        Database.DatabaseConnection c = new Database.DatabaseConnection();
        Database.DBActions dBActions = new Database.DBActions();
        SqlCommand cmd;
        SqlDataReader dr;
        DataSet ds;
        SqlConnection con;
        List<string> dest = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] == null)
                {
                    // ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "LoginReq();", true);
                    Response.Redirect("../Accounts/Login.aspx");

                }
                
                //for (int x = 0; x < _x.Length; x++)
                //{
                //    dest.Add(_x[x].ToString());
                //}
                
                
            }
            seattable.Visible = false;
            
            bokabtn.Click += Bokabtn_Click;
            txtname.Focus();

        }

        private void Bokabtn_Click(object sender, EventArgs e)
        {
            seattable.Visible = true;
            panel3.Visible = true;
            string query = "Select * from Booked where((Date = '" + date_box.Text.Trim() + "') and(Station = '" + dest_from.Value.Trim() + "'))";
            con = new SqlConnection(c.con);
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = query;
            dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                while (dr.Read())
                {
                    for (int j = 1; j <= 31; j++)
                    {
                        string s = "s" + j;
                        if (dr[s.ToString()].ToString() == "b")
                        {
                            ImageButton img = (ImageButton)Panel2.FindControl(s.ToString());
                            img.ImageUrl = "../images/booked_seat_img.gif";
                            img.Enabled = false;
                        }

                    }
                }
            }
        }

        protected void s1_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s1);
        }

        protected void s6_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s6);
        }

        protected void s7_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s7);
        }

        protected void s12_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s12);
        }

        protected void s13_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s13);
        }

        protected void s18_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s18);
        }

        protected void s19_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s19);
        }

        protected void s24_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s24);
        }

        protected void s25_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s25);
        }

        protected void s31_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s31);
        }

        protected void s2_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s2);
        }

        protected void s5_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s5);
        }

        protected void s8_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s8);
        }

        protected void s11_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s11);
        }

        protected void s14_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s14);
        }

        protected void s17_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s17);
        }

        protected void s20_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s20);
        }

        protected void s23_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s23);
        }

        protected void s26_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s26);
        }

        protected void s30_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s30);
        }

        protected void s29_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s29);
        }

        protected void s3_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s3);
        }

        protected void s4_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s4);
        }

        protected void s9_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s9);
        }

        protected void s10_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s10);
        }

        protected void s15_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s15);
        }

        protected void s16_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s16);
        }

        protected void s21_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s21);
        }

        protected void s22_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s22);
        }

        protected void s27_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s27);
        }

        protected void s28_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(s28);
        }

        protected void seatClick(ImageButton btn)
        {
            ibnext.Visible = true;
            if (btn.ImageUrl == "../images/selected_seat_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "../images/available_seat_img.gif";
                if (Stolar_box.Text.IndexOf(btn.ID.ToString() + ",") > -1)
                {
                    Stolar_box.Text = Stolar_box.Text.Replace(btn.ID.ToString() + ",", "");
                }
                else
                {
                    Stolar_box.Text = Stolar_box.Text.Replace(btn.ID.ToString(), "");
                }
            }
            else if (btn.ImageUrl == "../images/available_seat_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "../images/selected_seat_img.gif";
                if (Stolar_box.Text.Trim().Length == 0)
                {
                    Stolar_box.Text = btn.ID.ToString();
                }
                else if (Stolar_box.Text.Trim().EndsWith(","))
                {
                    Stolar_box.Text = Stolar_box.Text + btn.ID.ToString();
                }
                else
                {
                    Stolar_box.Text = Stolar_box.Text + "," + btn.ID.ToString();
                }
            }


        }

        //Gå vidare till Print sidan (Betalning)
          // Beräkna Kostnaden samt antal stolar***
        //Går vidare till Customer information
        protected void ibnext_Click(object sender, ImageClickEventArgs e)
        {
            //(Stolar)Panel2.Visible = false;
            //(Kund information) panel4.Visible = true;
            //panel3(GO btn).Visible = false;
            //btnSave (Sista Knapp).Visible = true;

            string[] str = Stolar_box.Text.Split('s');
            int len = str.Length - 1;
            littotalseat.Text = len.ToString();
            int z = len * int.Parse(_pris.Text.ToString());
            littotalrent.Text = z.ToString();

            Random rnd = new Random();
            Random rnd1 = new Random();

            litpnr.Text = rnd.Next(50000).ToString() + rnd1.Next(548775).ToString();
            litbusnumber.Text = _bussnr.Text.ToString();
            litrent.Text = _pris.Text.ToString();

            if (len == 0)
            {

                //  Label1.Text = "if";
                pnl1.Visible = true;
                Panel2.Visible = true;
                panel3.Visible = false;
                btnSave.Visible = false;
                
                
                ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "Stolnotfound();", true);
            }
            else
            {
                btnSave.Visible = true;
                pnl1.Visible = false;
                Panel2.Visible = false;
                panel3.Visible = false;
                panel4.Visible = true;
                ibnext.Visible = false;
               // Label1.Text = "else";
            }
        }

         
            protected void btnSave_Click(object sender, ImageClickEventArgs e)
            {
         
            //string[] forsave = Stolar_box.Text.Split(',');
            //string strsql = "select Count(*) from Booked where((Date='" + date_box.Text
            //         + "') and (Time= '" + time_box.Text
            //         + "') and (Station= '" + from_box.Text
            //         + "'))";


            //if (Convert.ToInt32(DBActions.ExecuteScaler(strsql)) == 0)
            //{
            //    string sqladd = "INSERT into Booked ([Date],[Time],Station) values('" + date_box.Text.ToString()
            //          + "','" + time_box.Text.ToString()
            //          + "','" + from_box.Text.ToString() + "')";
            //    DBActions.ExecuteNonQuery(sqladd);

            //}

              //for (int j = 0; j <= forsave.Length - 1; j++)
            //    {
            //        if (forsave[j].ToString().Trim().Length > 0)
            //        {
            //            string strsql1 = "Update Booked set " + forsave[j].ToString() + " = 'b'  where ((Date='" + date_box.Text.ToString()
            //               + "')and(Time='" + time_box.Text.ToString()
            //               + "')and (Station= '" + from_box.Text.ToString()
            //               + "'))";
            //            DBActions.ExecuteNonQuery(strsql1);

            //        }
            //    }


           


           

            //  Second Way
            if (txtname.Text == "" || txtphone.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "Stolnotfound();", true);
            }
            else
            {
                using (SqlConnection sqlConnection = new SqlConnection(c.con))
                {
                    sqlConnection.Open();
                    SqlCommand sqlCmd = new SqlCommand("PassengerAddOrEdit", sqlConnection);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(hfId.Value == "" ? "0" : hfId.Value));
                    sqlCmd.Parameters.AddWithValue("@Pnr", litpnr.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@P_Name", txtname.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@P_Phone", txtphone.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@P_From", dest_from.Value.ToString());
                    sqlCmd.Parameters.AddWithValue("@P_To", dest_to.Value.ToString());
                    sqlCmd.Parameters.AddWithValue("@P_Date", date_box.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@P_Time", null);
                    sqlCmd.Parameters.AddWithValue("@TotalSeat", littotalseat.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@SeatNumber", Stolar_box.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@Amount", littotalrent.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@Paid", "Betalt");
                    sqlCmd.Parameters.AddWithValue("@Status", "Bokat");
                    sqlCmd.ExecuteNonQuery();
                    // Succes Registering in DB
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "Stolnotfound();", true);
                    sqlConnection.Close();


                }
            }
 
            //Coockies
            //Response.Cookies["destination"].Value = from_box.Text.ToString();
            //Response.Cookies["pnr"].Value = litpnr.Text.ToString();
            //Response.Cookies["name"].Value = txtname.Text.ToString();
            //Response.Cookies["ph"].Value = txtphone.Text.ToString();
            //Response.Cookies["jodate"].Value = date_box.Text.ToString();
            //Response.Cookies["jotime"].Value = time_box.Text.ToString();
            //Response.Cookies["seatnum"].Value = Stolar_box.Text.ToString();
            //Response.Cookies["totalseat"].Value = littotalseat.Text.ToString();
            //Response.Cookies["rent"].Value = littotalrent.Text.ToString();
            //Response.Cookies["busnumber"].Value = litbusnumber.Text.ToString();
            ////Response.Redirect("print1.aspx");

        }

        protected void srchbtn_Click(object sender, EventArgs e)
        {
            Main.Reg(this, "alert('ks')");
            if (dest_from.Value == "" || dest_to.Value == "" || date_box.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "EmptyFields();", true);
            }
            else
            {
                String query2 = "SELECT * FROM Time_List WHERE (Fr_Station = '" + dest_from.Value.Trim() + "') AND (To_Station = '" + dest_to.Value.Trim() + "') AND (Date_Time = '" + date_box.Text.Trim() + "');";
                con = new SqlConnection(c.con);
                cmd = new SqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = query2;
                using (dr = cmd.ExecuteReader())
                {
                    if (dr.Read())
                    {
                        pnl1.Visible = true;
                        _från.Text = dr[1].ToString();
                        _till.Text = dr[2].ToString();
                        _pris.Text = dr[3].ToString();
                        _avtid.Text = dr[4].ToString();
                        _anktid.Text = dr[5].ToString();
                        _bussnr.Text = dr[6].ToString();
                        _datum.Text = dr[7].ToString();
                    }
                    else
                    {
                        pnl1.Visible = false;
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "TripdontFound();", true);
                    }
                }
                con.Close();
            }
            // string query = "Select * from Time_List where FName = '" + searchbox1.Text.Trim() + "'";
        }
    }
}