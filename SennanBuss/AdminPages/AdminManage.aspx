<%@ Page Title="Adminstrativ hantering" Language="C#" MasterPageFile="~/AdminPages/Admin.Master" AutoEventWireup="true" CodeBehind="AdminManage.aspx.cs" Inherits="SennanBuss.AdminPages.AdminManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main role="main">
          <section class=" panel important">

               <asp:gridview runat="server" ID="GridView1" RowHeaderColumn="0" 
                   HeaderStyle-BackColor="slategray" HeaderStyle-Font-Bold="true" 
                   HeaderStyle-ForeColor="Black" RowStyle-BackColor="WhiteSmoke"></asp:gridview>
              </section>
        


         </main>
    

</asp:Content>
