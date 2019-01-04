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
    
    <asp:HiddenField ID="hfId" runat="server" />

    <div class="container">
        <div class="lg text-center">
             <p id="info-main" class="text-center">Ange nedanstående uppgifter</p><br /><br />
    <asp:TextBox ID="usrtxtbox" runat="server" placeholder="Användarnamn" ToolTip="Fyll i det här fältet"></asp:TextBox><br /><br />
     <asp:TextBox ID="ematxtbox" runat="server" placeholder="Email" TextMode="Email" ToolTip="Fyll i det här fältet"></asp:TextBox><br /><br />
          
    <asp:TextBox ID="pswtxtbox" runat="server" placeholder="Lösenord" TextMode="Password" ToolTip="Fyll i det här fältet"></asp:TextBox><br /><br />
    <asp:TextBox ID="cpwdtxtbox" runat="server" placeholder="Bekräfta Lösenord" TextMode="Password" ToolTip="Fyll i det här fältet" ></asp:TextBox><br /><br />
    <asp:Button ID="signupbtn" runat="server" Text="Skapa Konto" OnClick="signupbtn_Click"/><br /><br />
    
    <asp:Label ID="redankontolbl" runat="server" Text="Redan har ett konto?" CssClass="forgot"></asp:Label><br /><br />
    <asp:Button ID="loginbtn" runat="server" Text="Logga In" OnClick="loginbtn_Click"/>
        </div>
    </div>





    <%-- <div class="login">
   
    </div>--%>
    <div class="shadow"></div>
  
 
    
    </asp:Content>