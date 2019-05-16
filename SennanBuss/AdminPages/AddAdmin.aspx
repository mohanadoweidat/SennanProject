<%@ Page Title="Lägga till Adminstratör" Language="C#" MasterPageFile="~/AdminPages/Admin.Master" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="SennanBuss.AdminPages.AddAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <main role="main">
       <section class=" panel important">

           <asp:HiddenField ID="hfId" runat="server" />

       <table cellspacing="0" cellpadding="2" border="0" style="vertical-align:top; margin:0 auto;padding-top:25px;border-collapse: collapse; width: 75%; margin: 2%;" >
                                            <tbody>                                                
                                                 <tr>
                                                     <td >
                                                        <asp:Label ID="Label1" runat="server" Text="Användarnamnet:"></asp:Label>
                                                     </td>
                                                     </tr>
                                                <tr>
                                                     <td>
                                                        <asp:TextBox ID="UsernameBox" runat="server"  ></asp:TextBox> 
                                                        </td>
                                                </tr>
                                                 <tr>
                                                    <td>  <asp:Label ID="Label2" runat="server" Text="E-post:"></asp:Label></td>
                                                 </tr>
                                                <tr>
                                                    <td>
                                                         <asp:TextBox ID="EmailBox" runat="server" TextMode="Email"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                         <asp:Label ID="Label3" runat="server" Text="Lösenordet:"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                         <asp:TextBox ID="PasswordBox" runat="server" TextMode="Password"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="CreateAdminbtn" runat="server" Text="Lägg till"  />
                                                    </td>
                                                    <td></td>
                                            <td></td>
                                                </tr>
                                            </tbody>
                                        </table>
       
           
          
           
            
           
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


         function NameExist() {
                 Swal.fire({
  type: 'error',
  title: 'Fel',
  text: 'Användarnamnet finns redan!'
  
 })
         }


         function EmailExist() {
                 Swal.fire({
  type: 'error',
  title: 'Fel',
  text: 'E-post addressen finns redan!'
  
 })
         }


         function SuccessCreate() {
          swal("Obs!", "Kontot har skapats!" + "</br>", "success");
  
  
         }







    </script>

</asp:Content>
