<%@ Page Language="C#" Title="Glömt Lösenord" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="SennanBuss.Accounts.ForgotPassword" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

       <link rel="stylesheet" href="../styles/pages/forms/register.css"/>
    
     
    </asp:Content>

 
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
             <div class="lg text-center">
                                    <span class="glyphicon glyphicon-lock" style="font-size:59px;color:red"></span><br /><br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Glömt Lösenord:"></asp:Label><br /><br />

        <asp:TextBox ID="usnmbox" placeholder="Användarnamn" runat="server"></asp:TextBox><br /><br />
        <asp:TextBox ID="usembox" placeholder="Email" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="sendpwd" runat="server" BackColor="#0033CC" Font-Bold="True" ForeColor="Black" OnClick="sendpwd_Click" Text="Skicka Lösenord"/><br /><br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
        </div>


       

           
            
           
         
                
       




        
        <!-- tooltip-->
            <script type="text/javascript">
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip({
        placement: 'bottom'
    });
});
</script>
    </asp:Content>

        


 
 
 
