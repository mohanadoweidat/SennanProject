<%@ Page Title="Lägg en resa" Language="C#" MasterPageFile="~/AdminPages/Admin.Master" AutoEventWireup="true" CodeBehind="AddTrip.aspx.cs" Inherits="SennanBuss.AdminPages.AddTrip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .s{
            font-size:small;
            font-weight:200;
            color:black;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:HiddenField ID="hfId" runat="server" />

    <main role="main">


        <section class="panel important">

            <table>
                <tr class="s">
                   <td> <asp:Label ID="Label1" runat="server" Text="Från:"></asp:Label></td>
                    <td> <asp:Label ID="Label2" runat="server" Text="Till:"></asp:Label></td>
                    <td> <asp:Label ID="Label3" runat="server" Text="Pris:"></asp:Label></td>
                    <td> <asp:Label ID="Label4" runat="server" Text="Avgångstid:"></asp:Label></td>
                    <td> <asp:Label ID="Label5" runat="server" Text="Ankomsttid:"></asp:Label></td>
                    <td> <asp:Label ID="Label6" runat="server" Text="BussNummer:"></asp:Label></td>
                    <td> <asp:Label ID="Label7" runat="server" Text="Res Datum:"></asp:Label></td>
                    
                </tr>
                <tr>
                    <td> <asp:TextBox ID="Fr_om" runat="server" TextMode="SingleLine"></asp:TextBox></td>
                    <td> <asp:TextBox ID="T_O" runat="server" TextMode="SingleLine"></asp:TextBox></td>
                    <td> <asp:TextBox ID="Pr_IS" runat="server" TextMode="SingleLine"></asp:TextBox></td>
                    <td> <asp:TextBox ID="AV_TID" runat="server" TextMode="Time" format="HH:mm"></asp:TextBox></td>
                    <td> <asp:TextBox ID="ANK_TID" runat="server" TextMode="Time" format="HH:mm"></asp:TextBox></td>
                    <td> <asp:TextBox ID="BU_NR" runat="server" TextMode="Number"></asp:TextBox></td>
                     <td> <asp:TextBox ID="RES_DAT" runat="server" TextMode="Date"></asp:TextBox></td>
                </tr>
            </table>

           
            <center>

          
            <asp:Button ID="Add_Btn" runat="server" Text="Lägg till En resa" OnClick="Add_Btn_Click"  />
              </center>
        </section>
    </main>


      <script>

       function EmptyFields() {
            Swal.fire({
  type: 'error',
  title: 'Fel',
  text: 'Var vänlig och fyll i alla Fälten!'
  
 })
          }


           function SuccessCreate() {
          swal("Obs!", "Resan har Lagts till!" + "</br>", "success");
  
  
         }

          </script>

</asp:Content>
