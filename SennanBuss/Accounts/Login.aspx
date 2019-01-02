<%@ Page Title="" Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SennanBuss.Accounts.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
     <!-- Log in and sign up form style-->
    <link rel="stylesheet" href="../styles/pages/forms/register.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="login1">
          <asp:TextBox ID="usrtxtbox" runat="server" placeholder="Användarnamn" ToolTip="Username"></asp:TextBox>
             <!-- tooltip-->
               <span class="glyphicon glyphicon-edit" data-toggle="tooltip" data-original-title="example@gmail.com"></span>
          <asp:TextBox ID="pswtxtbox" runat="server" placeholder="Lösenord" TextMode="Password" ToolTip="Password"></asp:TextBox>
          <asp:HyperLink ID="pswforglink" runat="server" CssClass="forgot" NavigateUrl="~/Accounts/ForgotPassword.aspx">forgot password?</asp:HyperLink>
          <asp:Button ID="loginbtn" runat="server" Text="Logga In" OnClick="loginbtn_Click" />

          <br />

          <asp:Label ID="ingetkontolbl" runat="server" Text="Inget Konto?" CssClass="forgot"></asp:Label>
          <asp:Button ID="signupbtn" runat="server" Text="Skapa Konto"  OnClick="signupbtn_Click"  />

       </div>
                <div class="shadow"></div>
    </div>

    <!-- Error logg in Alredy exist Email and name Both-->
        <script type="text/javascript" lang="ja">

            function Loginerror() {
                swal({
         type: 'error',
         title: 'Oops...',
           text:"Du har angett fel Användarnamn eller Lösenord!"})}
        </script>


       <!-- tooltip-->
            <script type="text/javascript">
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip({
        placement: 'bottom'
    });
});
</script>
       </asp:Content>
