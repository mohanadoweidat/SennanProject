<%@ Page Title="" Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SennanBuss.Accounts.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!-- Log in and sign up form style-->
    <link rel="stylesheet" href="../styles/pages/forms/register.css"/>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          
    <div class="container">
        <div class="lg text-center">
            <asp:TextBox ID="usrtxtbox" runat="server" placeholder="Användarnamn" ToolTip="Username"></asp:TextBox><br /><br />
            <asp:TextBox ID="pswtxtbox" runat="server" placeholder="Lösenord" TextMode="Password" ToolTip="Password"></asp:TextBox><br /><br />
             <asp:HyperLink ID="pswforglink" runat="server" CssClass="forgot" NavigateUrl="~/Accounts/ForgotPassword.aspx">forgot password?</asp:HyperLink><br /><br />
             <asp:Button ID="loginbtn" runat="server" Text="Logga In" OnClick="loginbtn_Click" /><br /><br />
              <asp:Label ID="ingetkontolbl" runat="server" Text="Inget Konto?" CssClass="forgot"></asp:Label><br /><br />
              <asp:Button ID="signupbtn" runat="server" Text="Skapa Konto"  OnClick="signupbtn_Click"  />           
        </div>
    </div>

    <div class="shadow"></div>
    
         
 

       
       </asp:Content>
