<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Final_project_asp.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Stylesheet.css" />
</head>
<body style="background-image:url(Images/BACK.jpg); background-size:100%;">
    <form id="form1" runat="server">
     <h1 style="background-color: #000000; text-align:center; border-style: outset; padding: 1px; margin: 1px; display: block; font-size:65px; font-weight: bold; color: #FFFFFF"  > EL_QAZI CUTLERY ADMIN PANEL</h1>
   
        <div>
    <table style="margin-left:500px;margin-top:150px; width:50%; height:20%;">
        <tr>
             <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black; text-align:center;"><i class="glyphicon glyphicon-log-in">  LogIn</i></h1></td>

        </tr>
        <tr>
            <td>
               <i class="glyphicon glyphicon-user"> USER_ID:</i>
            </td>
            <td>
           
                
                     <asp:TextBox ID="txtuser" runat="server" Width="190px" ForeColor="Black"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuser" ErrorMessage="Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <i class="glyphicon glyphicon-lock"> PASSWORD:</i>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Width="190px" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2"> <asp:Button ID="btnlogin" runat="server" Text="Log In" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="btnlogin_Click" Width="164px"/> </td>
        </tr>
        <tr>
            <td colspan="2"><asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>

    </div>
    </form>
</body>
</html>
