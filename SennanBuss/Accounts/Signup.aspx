<%@ Page Title="Skapa konto" Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SennanBuss.Accounts.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/pages/forms/register.css" rel="stylesheet" type="text/css"/>
       <style>
     html { height: 100% }
::-moz-selection { background: #fe57a1; color: #fff; text-shadow: none; }
::selection { background: #fe57a1; color: #fff; text-shadow: none; }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="../images/slider/slider_1.jpg" class="img-responsive imag"/>
    <asp:HiddenField ID="hfId" runat="server" />
     <div class="login">
    <p id="info-main" class="text-center">Ange nedanstående uppgifter</p>
    <asp:TextBox ID="usrtxtbox" runat="server" placeholder="Användarnamn"></asp:TextBox>
         <p class="text-center info">?</p>
    <asp:TextBox ID="ematxtbox" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
    <asp:TextBox ID="pswtxtbox" runat="server" placeholder="Lösenord" TextMode="Password"></asp:TextBox>
    <asp:TextBox ID="cpwdtxtbox" runat="server" placeholder="Bekräfta Lösenord" TextMode="Password"></asp:TextBox>
    <asp:Button ID="signupbtn" runat="server" Text="Skapa Konto" OnClick="signupbtn_Click" />
    <br/>
    <asp:Label ID="redankontolbl" runat="server" Text="Redan har ett konto?"
     CssClass="forgot"></asp:Label>
    <asp:Button ID="loginbtn" runat="server" Text="Logga In" OnClick="loginbtn_Click"/>
    </div>
    <div class="shadow"></div>
    <script src="../js/forms/registerJ.js"></script>
    </asp:Content>