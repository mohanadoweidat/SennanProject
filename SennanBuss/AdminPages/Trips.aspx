<%@ Page Title="Resor" Language="C#" MasterPageFile="~/AdminPages/Admin.Master" AutoEventWireup="true" CodeBehind="Trips.aspx.cs" Inherits="SennanBuss.AdminPages.Trips" %>
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
                       <asp:BoundField DataField="Fr_Station" HeaderText="Från Station" 
                   SortExpression="Fr_Station" />

                        <asp:BoundField DataField="To_Station" HeaderText="Till Station" 
                   SortExpression="To_Station" />

                        <asp:BoundField DataField="Price_Seat" HeaderText="Biljetpris" 
                   SortExpression="Price_Seat" />

                        <asp:BoundField DataField="Dep_Time" HeaderText="Avgång Tid" 
                   SortExpression="Dep_Time" />

                        <asp:BoundField DataField="Arr_Time" HeaderText="Ankomt Tid" 
                   SortExpression="Arr_Time" />

                        <asp:BoundField DataField="Buss_Nr" HeaderText="Buss Nummer" 
                   SortExpression="Buss_Nr" />

                        <asp:BoundField DataField="Date_Time" HeaderText="Res Datum" 
                   SortExpression="Date_Time" />
                </Columns>
              </asp:GridView>
               
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="data source=89.221.254.34;initial catalog=MSSQL400023;persist security info=True;user id=MSSQL400023;password=OTo0OToyNg;MultipleActiveResultSets=True;App=EntityFramework"
                   SelectCommand="SELECT [Fr_Station],[To_Station],[Price_Seat],[Dep_Time],[Arr_Time],[Buss_Nr], [Date_Time] FROM [Time_List]"></asp:SqlDataSource>
              </section>
        </main>
</asp:Content>
