<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_HomePage.aspx.cs" Inherits="Final_project_asp.Admin_HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Admin Panel</title>
    <style >
        .auto-style1 {
            width: 430px;
        }
        .auto-style2 {
            width: 447px;
        }
        
  
    </style>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Stylesheet.css" />
</head>
<body style="background-color: white;">
  <form id="form1" runat="server">
   <h1 style="background-color: #000000; text-align:center; border-style: outset; padding: 1px; margin: 1px; display: block; font-size:65px; font-weight: bold; color: #FFFFFF"  > EL_QAZI CUTLERY ADMIN PANEL</h1>
             
      <div id="sidebar">
          <a href="Admin_HomePage.aspx"> <img src="Images/logo.jpg" alt="Logo"/></a>
     
   <ul >

            <li><i class="glyphicon glyphicon-home"> <a href="Admin_HomePage.aspx" style="color:white;">  Home  </a></i></li>
            <li><i class="glyphicon glyphicon-shopping-cart"> <a href="order.aspx" style="color:white;"> Order </a></i></li>
            <li><i class="glyphicon glyphicon-user"> <a href="customer.aspx" style="color:white;">Customer</a></i></li>
            <li><i class="glyphicon glyphicon-cutlery"> <a href="product.aspx" style="color:white;">Product</a></i></li>
              <li><i class="glyphicon glyphicon-log-out"> <a href="LogIn.aspx" style="color:white;"> LogOut </a></i></li>

        </ul>
</div>
      <div id="content">
          <h1 style="font-family:'Riffic Free';font-size:60px; color:white; text-align:center;"> Welcome to Admin Panel </h1>

<h3 style="text-align:center; color:white;">To view and update your profile kindly click below:</h3>
          
          <asp:Button ID="view_profile" runat="server" Text="MANAGE ADMIN PROFILE " Width="287px" style="margin-left:380px; text-decoration-color:black;" BackColor="#0000CC"  BorderStyle="Double" ForeColor="White" OnClick="view_profile_Click"/>
          
   </div>
  
  
    </form>

</body>
    
</html>
