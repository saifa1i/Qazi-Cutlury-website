<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_Profile.aspx.cs" Inherits="Final_project_asp.admin_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="background-color: #000000; text-align:center; border-style: outset; padding: 1px; margin: 1px; display: block; font-size:65px; font-weight: bold; color: #FFFFFF"  > EL_QAZI CUTLERY ADMIN PANEL</h1>
             
      <div id="sidebar">
          <a href="Admin_HomePage.aspx"> <img src="Images/logo.jpg" alt="Logo"/></a>
     
   <ul >

            <li><i class="glyphicon glyphicon-home"> <a href="Admin_HomePage.aspx" style="color:white;"> Home </a></i></li>
            <li><i class="glyphicon glyphicon-shopping-cart"> <a href="order.aspx" style="color:white;"> Order </a></i></li>
            <li><i class="glyphicon glyphicon-user"> <a href="customer.aspx" style="color:white;">Customer</a></i></li>
            <li><i class="glyphicon glyphicon-cutlery"> <a href="product.aspx" style="color:white;">Product</a></i></li>
              <li><i class="glyphicon glyphicon-log-out"><a href="LogIn.aspx" style="color:white;"> LogOut</a></i></li>

        </ul>
</div>
    <div id="content">
              <asp:MultiView ID="profile" runat="server">
               <asp:view ID="view0" runat="server">
                   <asp:Button ID="pro" runat="server" Text="CLICK ME TO OPEN PROFILE :)" Width="250px" Height="100px" BackColor="Black" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" style="margin-left:300px;" OnClick="pro_Click"/> 
               </asp:view>
                  <asp:View ID="view1" runat="server">

            <table style="width:64%; margin-left:150px;">
                <tr>
                    <td colspan="2"><h2>Profile Information</h2></td>
                </tr>
                <tr>
                    <td class="auto-style1">Profile Photo:</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Width="150px" height="150px"/>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Name:</td>
                    <td>
                        <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Father Name:</td>
                    <td>
                        <asp:Label ID="lblfather" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mobile Number:</td>
                    <td>
                        <asp:Label ID="lblmobile" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Address:</td>
                    <td>
                        <asp:Label ID="lbladdress" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Email Address:</td>
                    <td>
                        <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gender:</td>
                    <td>
                        <asp:Label ID="lblgender" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password:</td>
                    <td>
                        <asp:Label ID="lblpass" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">User ID:</td>
                    <td>
                        <asp:Label ID="lbluser" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                                <tr>
                   
                    <td >
                       <asp:Button ID="Bstep2" runat="server" Text="updateProfile;" OnClick="Bstep2_Click" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" />
                    </td>
                                     <td><asp:Label ID="lblerror" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>

        </asp:View>
               <asp:View ID="view2" runat="server">

            <table style="width:64%; margin-left:150px;">
                <tr>
                    <td colspan="2"><h2>Profile Information</h2></td>
                </tr>
                <tr>
                    <td class="auto-style1">Profile Photo:</td>
                    <td>
                        
                        <asp:FileUpload ID="FileUpload2" runat="server" ForeColor="Black" />
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="FileUpload2" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Name:</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Father Name:</td>
                    <td>
                        
                        <asp:TextBox ID="txtfather" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtfather"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mobile Number:</td>
                    <td>
                         <asp:TextBox ID="txtmobile" runat="server" ForeColor="Black"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Address:</td>
                    <td>
                         <asp:TextBox ID="txtaddress" runat="server" ForeColor="Black"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Email Address:</td>
                    <td>
                        
                        <asp:TextBox ID="txtemail" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gender:</td>
                    <td>
                        <asp:RadioButtonList ID="rgender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="rgender" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">New USERID:</td>
                    <td>
                                                <asp:TextBox ID="txtnewID" runat="server" ForeColor="Black"></asp:TextBox>
                        
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtnewID"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style1">New Password:</td>
                    <td>
                                                <asp:TextBox ID="txtpass" runat="server" ForeColor="Black"></asp:TextBox>
                        
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Old USERID:</td>
                    <td>
                                                <asp:TextBox ID="txtuser" runat="server" ForeColor="Black"></asp:TextBox>
                        
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtuser"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                                <tr>
                   
                    <td class="auto-style1">
                        <asp:Button ID="Submit" runat="server" OnClick="Button2_Click" Text="Submitt" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" />
                    </td>
                                     <td><asp:Label ID="Label1" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>

        </asp:View>
          </asp:MultiView>
          </div>
    </form>
</body>
</html>
