<%@ Page Title="" Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="Verifymail.aspx.cs" Inherits="SennanBuss.Accounts.Verifymail" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

     <!-- Log in and sign up form style-->
    <link rel="stylesheet" href="../styles/pages/forms/register.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin:20px auto">
        <div class="lg text-center">
             <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Bekräfta din Email" CssClass="container"></asp:Label><br /><br />
              <asp:Label ID="Label2" runat="server" Text="Aktivera din Mail" ForeColor="Red"  CssClass="container"></asp:Label><br /><br />
             <asp:Label ID="Label3" runat="server"   ForeColor="Tomato"  CssClass="container"></asp:Label><br /><br />
              
             <asp:TextBox ID="TextBox1" runat="server" CssClass="container"></asp:TextBox><br /><br />
             <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="#FFFF66" OnClick="Button1_Click" Text="Bekräfta Email" />



        </div>
    </div>
  

   
 




   

        <!-- Success logg in script-->
        <script type="text/javascript" lang="ja">
            function success1()
            {
                swal("Info!", "Din Mail har bekräftats!" + "</br>", "success","Logga in");
            }

      
             
        </script>

</asp:Content>
