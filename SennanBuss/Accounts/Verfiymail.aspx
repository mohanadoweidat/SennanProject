<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Verfiymail.aspx.cs" Inherits="SennanBuss.Accounts.Verfiymail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <style type="text/css">
        .auto-style1 {
            width: 599px
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Bekräfta din Email"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Aktivera din Mail" ForeColor="Red"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" ></asp:Label>
    <br />

      <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="Yellow" ></asp:Label>




    <table class="nav-justified">
        <tr>
            <td class="auto-style1">Din Aktiveringskod: </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="#FFFF66" OnClick="Button1_Click" Text="Bekräfta Email" />
            </td>
        </tr>
    </table>



</asp:Content>
