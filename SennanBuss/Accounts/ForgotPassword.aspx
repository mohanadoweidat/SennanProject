<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="SennanBuss.Accounts.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <style type="text/css">
        .auto-style1 {
            width: 37%;
            height: 129px;
            background-color: #FFFF66;
        }
    </style>

    
    <!--- Tooltip-->
    
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Glömt Lösenord:"></asp:Label>

            
            <!-- tooltip-->
               <span class="glyphicon glyphicon-edit" data-toggle="tooltip" data-original-title="exampl@gmail.com"></span>
        </div>
        <br />
        <table class="auto-style1">
            <tr>
                <td>Användarnamn</td>
             
                <td>
                    <asp:TextBox ID="usnmbox" runat="server" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Registererad Email</td>
                <td>
                    <asp:TextBox ID="usembox" runat="server" Width="214px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="sendpwd" runat="server" BackColor="#0033CC" Font-Bold="True" ForeColor="Black" OnClick="sendpwd_Click" Text="Skicka Lösenord" Width="147px" />
                </td>
            </tr>
        </table>
        <p style="text-align: left">
            &nbsp;</p>
        <asp:Label ID="Label2" runat="server"></asp:Label>


        <!-- tooltip-->
            <script type="text/javascript">
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip({
        placement: 'bottom'
    });
});
</script>
    </form>
</body>
</html>
