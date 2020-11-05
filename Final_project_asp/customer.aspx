<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="Final_project_asp.customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
   <h1 style="background-color: #000000; border-style: outset; padding: 1px; margin: 1px; display: block; font-size:65px; font-weight: bold; color: #FFFFFF" > EL_QAZI CUTLERY ADMIN PANEL</h1>
             
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
          <asp:MultiView ID="multiview4" runat="server">
              <asp:View ID="view0" runat="server">

                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1" Width="844px">
                      <Columns>
                          <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" ReadOnly="True" SortExpression="Customer_ID" />
                          <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                          <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" SortExpression="Order_ID" />
                          <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                          <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Asp_FinalProjectConnectionString4 %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
                  <br />
                  <br />
                  <br />
                  <table style="width:64%; margin-left:150px;">
                <tr>
                    <td ><asp:Button ID="InsertC" runat="server" Text="Add New Customer" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="InsertC_Click" /></td>
                    <td ><asp:Button ID="UpdateC" runat="server" Text="Update An Customer" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="UpdateC_Click" /></td>
                    <td ><asp:Button ID="DeleteC" runat="server" Text="Delete An Customer" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="DeleteC_Click" /></td>
                    <td ><asp:Button ID="DetailC" runat="server" Text="Detail Of Customer" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="InvoiceC_Click" /></td>
                </tr>
            </table>
              </asp:View>
              <asp:View ID="view1" runat="server">
                                   <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Enter Customer Details:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Customer_ID:</td>
                    <td>
                        <asp:TextBox ID="txtCustomerID" runat="server" ForeColor="Black"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtCustomerID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Customer_Name:</td>
                    <td>
                        <asp:TextBox ID="txtCustomerName" runat="server" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtCustomerName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                                       <tr>
                    <td class="auto-style1">Order_ID:</td>
                    <td>
                        <asp:TextBox ID="txtorderId" runat="server" ForeColor="Black"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtorderID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mobile_number:</td>
                    <td>
                        
                        <asp:TextBox ID="txtmobile" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                                       <tr>
                    <td class="auto-style1">Addressr:</td>
                    <td>
                        
                        <asp:TextBox ID="txtaddress" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                     <tr>
                    <td class="auto-style1">Customer Photo:</td>
                    <td>
                        
                        <asp:FileUpload ID="FileUpload3" runat="server" ForeColor="Black" />
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload3" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>                  <tr>
                    <td class="auto-style1">
                        <asp:Button ID="insertCustomer" runat="server" OnClick="insertCustomer_Click" Text="Submitt" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Width="121px" />
                    </td>
                </tr>
            </table>
             </asp:View>
             <asp:View ID="view2" runat="server">
                                   <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Update Customer Details:</h1></td>
                </tr>
                                       <tr>
                    <td class="auto-style1">Select Customer_ID to update Product:</td>
                    <td>
                        <asp:DropdownList ID="ddl1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Customer_ID" DataValueField="Customer_ID" ForeColor="Black"></asp:DropdownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddl1" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style1">New Customer_ID:</td>
                    <td>
                        <asp:TextBox ID="txtCustomersID" runat="server" ForeColor="Black"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCustomersID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">New Customer_Name:</td>
                    <td>
                        <asp:TextBox ID="txtCustomersName" runat="server" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtCustomersName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                                       <tr>
                    <td class="auto-style1">New Order_ID:</td>
                    <td>
                        <asp:TextBox ID="txtordersID" runat="server" ForeColor="Black"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtordersID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">New Mobile_number:</td>
                    <td>
                        
                        <asp:TextBox ID="txtmobiles" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                                       <tr>
                    <td class="auto-style1">New Address:</td>
                    <td>
                        
                        <asp:TextBox ID="txtaddresss" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtaddresss"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                     <tr>
                    <td class="auto-style1">New Customer Photo:</td>
                    <td>
                        
                        <asp:FileUpload ID="FileUpload4" runat="server" ForeColor="Black" />
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="FileUpload4" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>                  <tr>
                    <td class="auto-style1">
                        <asp:Button ID="updateCustomer" runat="server" OnClick="updateCustomer_Click" Text="Update" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Width="124px" />
                    </td>
                     <td><asp:Label ID="Label1" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
             </asp:View>
             <asp:View ID="view3" runat="server">
             
                  <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Delete Customer:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Select Customer_ID to delete Product:</td>
                    <td>
                        <asp:DropdownList ID="ddl2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Customer_ID" DataValueField="Customer_ID"></asp:DropdownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddl2" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                                          <tr>
                   
                    <td class="auto-style1">
                        <asp:Button ID="deletecustomer" runat="server" OnClick="deletecustomer_Click" Text="DeleteProduct" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" />
                    </td>
                </tr>
             </table>
             </asp:View>
         <asp:View ID="view4" runat="server">
                                   <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Customer Details:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Select Customer ID to view details:</td>
                                       <td>
                        <asp:DropdownList ID="ddl3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Customer_ID" DataValueField="Customer_ID" ForeColor="Black"></asp:DropdownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddl3" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                                          <tr>
                   
                    <td class="auto-style1">
                        <asp:Button ID="detailsCustomer" runat="server" OnClick="detailsCustomer_Click" Text="DetailCustomer" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" />
                    </td>
                </tr>
                                       <tr>
                    <td class="auto-style1">Customer_ID:</td>
                    <td>
                        <asp:Label ID="lblCustomerID" runat="server"></asp:Label>
                          
                        
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Customer_Name:</td>
                    <td>
                        <asp:Label ID="lblCustomerName" runat="server"></asp:Label>
                         </td>
                </tr>
                <tr>
                    <td class="auto-style1">Order_ID:</td>
                    <td>
                        
                        <asp:Label ID="lblOrderID" runat="server"></asp:Label>
                        
                        
                    </td>
                </tr>
                                       <tr>
                    <td class="auto-style1">Mobile Number:</td>
                    <td>
                        
                        <asp:Label ID="lblmobile" runat="server"></asp:Label>
                        
                        
                    </td>

                </tr>
                                       <tr>
                    <td class="auto-style1">Address:</td>
                    <td>
                        
                        <asp:Label ID="lbladdress" runat="server"></asp:Label>
                        
                        
                    </td>
                </tr>
                     <tr>
                    <td class="auto-style1">Customer Photo:</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" />
                        
                    </td>
                </tr>                  <tr>
                    <td class="auto-style1">
                        <asp:Button ID="printed" runat="server" OnClick="printcustomer_Click" Text="Home" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Width="110px" />
                    </td>
                     <td><asp:Label ID="lblerror" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
             </asp:View>
          </asp:MultiView>
    </div>
    </form>
</body>
</html>
