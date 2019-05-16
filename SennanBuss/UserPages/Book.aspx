<%@ Page  Title="Boka Resa" Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="SennanBuss.UserPages.Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <style type="text/css">

     
     body{
         background-color:antiquewhite;
     }

 </style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <!-- Search -->
    <asp:HiddenField ID="hfId" runat="server" />
    <center>
         
	 <div>
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <asp:UpdatePanel ID="up" runat="server">
             <ContentTemplate>
         <h1>Sök Din Resa</h1><br />

          	<div id="colorlib-reservation">
			<div class="container" style="background-color:beige; border:2px dashed black; padding:50px">
				<div class="row">
					<div class="col-md-12 search-wrap">
						<form class="colorlib-form">
		              	<div class="row">
		                <div class="col-md-4">
		                  <div class="form-group">
		                    <label for="date">Från:</label>
		                    <div class="form-field">
		                      <i class="icon icon-calendar2"></i>
		                       
      <input list="desto"  name="dest_from" value="--" onfocus="this.value = '';"   onblur="if (this.value == '') {this.value = '--';}" type="text" runat="server" class="form-control"  id="dest_from"/>
    <datalist id="desto">
        <%
            {
                var _x = SennanBuss.head.Main.GetDBValue("Time_List", "Fr_Station", null, null);
                List<string> list = new List<string>();

                for (int x = 0; x < _x.Length; x++)
                {
                    if (!list.Contains(_x[x].ToString()))
                    {
                        list.Add(_x[x].ToString());
                    }
                }
                for(int x = 0; x < list.Count; x++)
                {
                    Response.Write("<option value=\"" + list[x] + "\"/>");
                }
            }
            %>
    </datalist>
		                    </div>
		                  </div>
		                </div>
		                <div class="col-md-4">
		                  <div class="form-group">
		                    <label for="date">Till:</label>
		                    <div class="form-field">
		                      <i class="icon icon-calendar2"></i>
      <input list="goto" name="dest_to" value="--" onfocus="this.value = '';"   onblur="if (this.value == '') {this.value = '--';}" type="text" runat="server" class="form-control"  id="dest_to"/>
    <datalist id="goto">
        <%
            {
                var _x = SennanBuss.head.Main.GetDBValue("Time_List", "To_Station", null, null);
                List<string> list = new List<string>();

                for (int x = 0; x < _x.Length; x++)
                {
                    if (!list.Contains(_x[x].ToString()))
                    {
                        list.Add(_x[x].ToString());
                    }
                }
                for(int x = 0; x < list.Count; x++)
                {
                    Response.Write("<option value=\"" + list[x] + "\"/>");
                }
            }
            %>
    </datalist>
		                    </div>
		                  </div>
		                </div>
		                <%--<div class="col-md-3">
		                  <div class="form-group">
		                    <label for="adults">Tid</label>
		                    <div class="form-field">
		                      <i class="icon icon-arrow-down3"></i>
                        <asp:TextBox ID="time_box" runat="server" TextMode="Time"  CssClass="form-control"></asp:TextBox>
		                     
		                    </div>
		                  </div>
		                </div>--%>
		                <div class="col-md-4">
		                  <div class="form-group">
		                    <label for="children">Res Datum</label>
		                    <div class="form-field">
		                      <i class="icon icon-arrow-down3"></i>
                                <asp:TextBox ID="date_box" runat="server" TextMode="Date"  CssClass="form-control"></asp:TextBox>
		                     <%-- <select name="people" id="people" class="form-control">
		                        <option value="#">1</option>
		                        <option value="#">2</option>
		                        <option value="#">3</option>
		                        <option value="#">4</option>
		                        <option value="#">5+</option>
		                      </select>--%>
		                    </div>
		                  </div>
		                </div>
                    <asp:Button ID="srchbtn" OnClick="srchbtn_Click" runat="server" Text="Söka" CssClass="btn btn-primary btn-block"></asp:Button>
                              
		                <div class="col-md-2">
                            <%-- Search Button side-- %>
		                  <%--  <input type="submit" name="submit" id="submit" value="Search" class="btn btn-primary btn-block">--%>
		                </div>
		              </div>
		            </form>
					</div>
				</div>
			</div>
		</div>
	 </div>
        <br />
         <!-- This is for search reslut section-->
                                    
                            <table style="background-color:beige;" >
                    <tbody>
                        <tr>
                            <!--Center Side Start -->
                            <td>            
                            </td>
                            <!--Center Side End -->
                            <!--Right Side open -->
                            <td valign="middle" align="center">
                                 <asp:Panel  ID="pnl1" runat="server" Visible="False">
                                            <div id="Div1">
                                                 
                                                 <div>
                                                     
                                                    <table cellpadding="2" border="0" style="border:2px solid gray; padding:30px;" dir="ltr" >
                                                        <tbody  align="left"  >
                                                            <tr >
                                                                <td height="25">
                                                                    <strong>Från:</strong> 
                                                                </td>
                                                                <td class="style3">
                                                                    :
                                                                </td>
                                                                <td>
                                                                    <asp:Literal ID="_från" runat="server"  />
                                                                </td>
                                                                <td style="margin-left:15px;width:100px">
                                                                    <strong>Till</strong></td>
                                                                <td>:</td>
                                                                <td><asp:Literal ID ="_till" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    <strong>Pris</strong>
                                                                </td>
                                                                <td class="style3">
                                                                    :
                                                                </td>
                                                                <td class="style2">
                                                                    <asp:Literal ID="_pris" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <strong>Avgångs Tid</strong></td>
                                                                <td>:</td>
                                                                <td><asp:Literal ID="_avtid" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    <strong> Ankomst Tid  </strong>
                                                                </td>
                                                                <td class="style3">
                                                                    :
                                                                </td>
                                                                <td class="style2">
                                                                 <asp:Literal ID="_anktid" runat="server" />   
                                                                </td>
                                                                <td>
                                                                    <strong> Buss Nr  </strong> </td>
                                                                <td>:</td>
                                                                <td><asp:Literal ID="_bussnr" runat="server" /></td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="left" height="25">
                                                                        <strong> Datum </strong>
                                                                    </td>
                                                                    <td align="left" class="style3">
                                                                        :
                                                                    </td>
                                                                    <td align="left" class="style2">
                                                                        <asp:Literal ID="_datum" runat="server"></asp:Literal>
                                                                    </td>
                                                                    <td></td>
                                                                    <td></td>
                                                                   <td align="center"><asp:Button runat="server" Text="Boka" ID="bokabtn" ></asp:Button></td>
                                                                </tr>
                                                         </tbody>
                        </table>
                                                       
                        </div>
                                                    </div> </asp:Panel>
                            </td>
                            <!--Right Side End -->
                        </tr>
                    </tbody>
                </table>
        <br />

           <!-- Select Seat section--->
        <table>
            <tr>
                <td>
                     <asp:Panel ID="Panel2" runat="server">
                                            <asp:Table border="0" ID="seattable" runat="server">
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell1" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s1" ToolTip="Window Side" ImageUrl="../images/available_seat_img.gif"
                                                            OnClick="s1_Click" runat="server" />1</asp:TableCell>
                                                    <asp:TableCell ID="TableCell2" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s6" OnClick="s6_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />6</asp:TableCell>
                                                    <asp:TableCell ID="TableCell3" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s7" OnClick="s7_Click" ToolTip="Window Side" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />7</asp:TableCell>
                                                    <asp:TableCell ID="TableCell4" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s12" OnClick="s12_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />12</asp:TableCell>
                                                    <asp:TableCell ID="TableCell5" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s13" OnClick="s13_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />13</asp:TableCell>
                                                    <asp:TableCell ID="TableCell6" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s18" OnClick="s18_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />18</asp:TableCell>
                                                    <asp:TableCell ID="TableCell7" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s19" OnClick="s19_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />19</asp:TableCell>
                                                    <asp:TableCell ID="TableCell8" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s24" OnClick="s24_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />24</asp:TableCell>
                                                    <asp:TableCell ID="TableCell9" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s25" OnClick="s25_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />25</asp:TableCell>
                                                    <asp:TableCell ID="TableCell10" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s31" OnClick="s31_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />31</asp:TableCell></asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell11" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s2" ImageUrl="../images/available_seat_img.gif" OnClick="s2_Click"
                                                            runat="server" />2</asp:TableCell>
                                                    <asp:TableCell ID="TableCell12" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s5" OnClick="s5_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />5</asp:TableCell>
                                                    <asp:TableCell ID="TableCell13" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s8" OnClick="s8_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />8</asp:TableCell>
                                                    <asp:TableCell ID="TableCell14" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s11" OnClick="s11_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />11</asp:TableCell>
                                                    <asp:TableCell ID="TableCell15" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s14" OnClick="s14_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />14</asp:TableCell>
                                                    <asp:TableCell ID="TableCell16" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s17" OnClick="s17_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />17</asp:TableCell>
                                                    <asp:TableCell ID="TableCell17" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s20" OnClick="s20_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />20</asp:TableCell>
                                                    <asp:TableCell ID="TableCell18" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s23" OnClick="s23_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />23</asp:TableCell>
                                                    <asp:TableCell ID="TableCell19" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s26" OnClick="s26_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />26</asp:TableCell>
                                                    <asp:TableCell ID="TableCell20" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s30" OnClick="s30_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />30</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell21" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell22" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell23" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell24" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell25" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell26" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell27" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell28" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell29" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell30" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s29" OnClick="s29_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />29</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell31" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s3" OnClick="s3_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />3</asp:TableCell>
                                                    <asp:TableCell ID="TableCell32" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s4" OnClick="s4_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />4</asp:TableCell>
                                                    <asp:TableCell ID="TableCell33" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s9" OnClick="s9_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />9</asp:TableCell>
                                                    <asp:TableCell ID="TableCell34" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s10" OnClick="s10_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />10</asp:TableCell>
                                                    <asp:TableCell ID="TableCell35" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s15" OnClick="s15_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />15</asp:TableCell>
                                                    <asp:TableCell ID="TableCell36" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s16" OnClick="s16_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />16</asp:TableCell>
                                                    <asp:TableCell ID="TableCell37" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s21" OnClick="s21_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />21</asp:TableCell>
                                                    <asp:TableCell ID="TableCell38" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s22" OnClick="s22_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />22</asp:TableCell>
                                                    <asp:TableCell ID="TableCell39" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s27" OnClick="s27_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />27</asp:TableCell>
                                                    <asp:TableCell ID="TableCell40" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s28" OnClick="s28_Click" ImageUrl="../images/available_seat_img.gif"
                                                            runat="server" />28</asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </asp:Panel>
                     <asp:Panel ID="panel3" runat="server" Visible="false">

                         <table>
                             <tr>
                                 <td><asp:TextBox ID="Stolar_box" runat="server"></asp:TextBox></td>
                             </tr>
                             <tr>
                                 
                                 <td>
                                     <asp:ImageButton ID="ibnext" ImageUrl="../images/btn_go.gif" runat="server"  OnClick="ibnext_Click" />
                                
                             
                                 </td>
                             </tr>
                         </table>
                         </asp:Panel>
                      <asp:Panel ID="panel4" runat="server" Visible="False">
                  
                                                 <div id="blueBox">
                                                <div id="blueBoxtitle">
                                                    <h4>
                                                        passagerare Information
                                                    </h4>
                                                </div>
                                                <div style="float: right; width: 296px; height: 200px;">
                                                    <table cellspacing="0" cellpadding="0" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td height="25">
                                                                    Biljet Nummer
                                                                </td>
                                                                <td>
                                                                    :
                                                                </td>
                                                                <td>
                                                                    <asp:Literal ID="litpnr" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    Namn
                                                                </td>
                                                                <td>
                                                                    :
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" />
                                                                   <%-- <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="*" ControlToValidate="txtname" />--%>
                                                                    <%--<asp:RangeValidator ID="range" Text ="Invalid Name" Type="String"   ControlToValidate="txtname" runat="server" /> --%>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    Mobil Nummer
                                                                </td>
                                                                <td>
                                                                    :
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtphone" runat="server" CssClass="form-control" />
                                                                   <%-- <asp:RequiredFieldValidator ID="rfvph" ControlToValidate="txtphone" ErrorMessage="*"
                                                                        runat="server" />
                                                                    <asp:RangeValidator ID="rangephnumber" Text="Invalid Number" Type="Double" MaximumValue="10000000000"
                                                                        MinimumValue="1" ControlToValidate="txtphone" runat="server" />--%>
                                                                </td>
                                                                <tr>
                                                                    <td align="left" height="25">
                                                                        Antal Stolar
                                                                    </td>
                                                                    <td align="left">
                                                                        :
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:Literal ID="littotalseat" runat="server"></asp:Literal>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" height="25">
                                                                        Avgift Per Stol
                                                                    </td>
                                                                    <td align="left" width="5%">
                                                                        :
                                                                    </td>
                                                                    <td align="left" width="49%">
                                                                        <asp:Literal ID="litrent" runat="server"></asp:Literal>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="25" align="left">
                                                                        Buss Nummer
                                                                    </td>
                                                                    <td width="5%" align="left">
                                                                        :
                                                                    </td>
                                                                    <td align="left" width="49%">
                                                                        <asp:Literal ID="litbusnumber" runat="server" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="redText " height="25">
                                                                        Totala Beloppet
                                                                    </td>
                                                                    <td width="5%">
                                                                        :
                                                                    </td>
                                                                    <td class="redText">
                                                                        Kr.
                                                                        <asp:Literal ID="littotalrent" runat="server" />
                                                                    </td>
                                                                </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td></td>
                                                                 
                                                                 <td> <asp:ImageButton ID="btnSave" ImageUrl="../images/btn_go.gif" runat="server"  OnClick="btnSave_Click" /></td> 
                                                                <td><asp:Label ID="Error" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                        
                                        </asp:Panel>
                </td>
            </tr>
        </table>


       
        </ContentTemplate>
             </asp:UpdatePanel>
     </center>

     


    <br />
    <br />
    <br />
    <br />
     
    <script>

         function LoginReq() {
                 Swal.fire({
  type: 'error',
  title: 'Fel',
  text: 'Du måste Vara inloggad för att boka en resa!'
  
 })
        }


             function EmptyFields() {
                 Swal.fire({
  type: 'error',
  title: 'Fel',
  text: 'Var vänlig och fyll i alla fälten!'
  
 })
        }


        
         function TripdontFound() {
                 Swal.fire({
  type: 'error',
  title: 'Info',
  text: 'Ingen Resa Hittades!!'
  
 })
        }

           function Stolnotfound() {
                 Swal.fire({
  type: 'error',
  title: 'Info',
  text: 'Var vänlig och välj en stol!'
  
 })
        }


       
    </script>




     

</asp:Content>
