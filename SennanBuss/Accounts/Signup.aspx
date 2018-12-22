<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SennanBuss.Accounts.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script src="../sweetalert2.all.min.js"></script>
    <link href="../sweetalert2.css" rel="stylesheet" />
    <link href="../styles/pages/forms/register.css" rel="stylesheet" type="text/css"/>

     <!-- Log in and sign up form style-->
       <style>
     html { height: 100% }
::-moz-selection { background: #fe57a1; color: #fff; text-shadow: none; }
::selection { background: #fe57a1; color: #fff; text-shadow: none; }
/*body { background-image: radial-gradient( cover, rgba(92,100,111,1) 0%,rgba(31,35,40,1) 100%), url('http://i.minus.com/io97fW9I0NqJq.png') }*/

 </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:HiddenField ID="hfId" runat="server" />


     <div class="login">
    <asp:TextBox ID="usrtxtbox" runat="server" placeholder="Användarnamn"></asp:TextBox>
    <asp:TextBox ID="ematxtbox" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
    <asp:TextBox ID="pswtxtbox" runat="server" placeholder="Lösenord" TextMode="Password"></asp:TextBox>
    <asp:TextBox ID="cpwdtxtbox" runat="server" placeholder="Bekräfta Lösenord" TextMode="Password"></asp:TextBox>
    <asp:Button ID="signupbtn" runat="server" Text="Skapa Konto" OnClick="signupbtn_Click" />

    <br />

    <asp:Label ID="redankontolbl" runat="server" Text="Redan har ett konto?" CssClass="forgot"></asp:Label>
    <asp:Button ID="loginbtn" runat="server" Text="Logga In" OnClick="loginbtn_Click"/>

    </div>
    <div class="shadow"></div>

    <script src="../js/forms/registerJ.js"></script>
    </asp:Content>