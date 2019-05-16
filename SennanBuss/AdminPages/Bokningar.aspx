<%@ Page Title="Bokningar" Language="C#" MasterPageFile="~/AdminPages/Admin.Master" AutoEventWireup="true" CodeBehind="Bokningar.aspx.cs" Inherits="SennanBuss.AdminPages.Bokningar" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main role="main">
          <section class=" panel important">

                <asp:GridView ID="GridView1" runat="server" RowHeaderColumn="0" 
                   HeaderStyle-BackColor="slategray" HeaderStyle-Font-Bold="true" 
                   HeaderStyle-ForeColor="Black" RowStyle-BackColor="WhiteSmoke" 
               DataSourceID="SqlDataSource1" AutoGenerateColumns="false" AllowSorting="true" Font-Size="Small"
                GridLines="Both">

                  <Columns>
                       <asp:BoundField DataField="Pnr" HeaderText="Biljetts Nummer" 
                   SortExpression="Pnr" />

                        <asp:BoundField DataField="P_Name" HeaderText="P-Namn" 
                   SortExpression="P_Name" />

                        <asp:BoundField DataField="P_Phone" HeaderText="P-Mobilnummer" 
                   SortExpression="P_From" />
                       
                        <asp:BoundField DataField="Amount" HeaderText="Belopp" 
                   SortExpression="Amount" />
                </Columns>
              </asp:GridView>
               
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="data source=89.221.254.34;initial catalog=MSSQL400023;persist security info=True;user id=MSSQL400023;password=OTo0OToyNg;MultipleActiveResultSets=True;App=EntityFramework"
                   SelectCommand="SELECT [Pnr],[P_Name],[P_Phone],[P_From], [Amount] FROM [passengerinfo]"></asp:SqlDataSource>
              </section>


         
   </main>
</asp:Content>
