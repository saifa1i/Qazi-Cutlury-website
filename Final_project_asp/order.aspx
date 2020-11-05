<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="Final_project_asp.order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="background-color: #000000; border-style: outset; padding: 1px; margin: 1px; display: block; font-size:65px; font-weight: bold; color: #FFFFFF; text-align:center;" > EL_QAZI CUTLERY ADMIN PANEL</h1>
             
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
         <asp:MultiView ID="multiview1" runat="server">
             <asp:View ID="view0" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Order_ID" DataSourceID="SqlDataSource1" style="margin-left:220px;" ForeColor="Black" Height="147px" Width="700px">
                      <Columns>
                          <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" ReadOnly="True" SortExpression="Order_ID" />
                          <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                          <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                          <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
                          <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                          <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
                          <asp:BoundField DataField="Product_Quantity" HeaderText="Product_Quantity" SortExpression="Product_Quantity" />
                          <asp:BoundField DataField="totalPrice" HeaderText="Total_Price" SortExpression="Total_Price" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Asp_FinalProjectConnectionString %>" SelectCommand="SELECT * FROM [Orders]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
             <br/> <br/>
                <br/><br/>
               <table style="width:64%; margin-left:150px;">
                <tr>
                    <td ><asp:Button ID="Insert" runat="server" Text="Add New Order" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="Insert_Click" /></td>
                    <td ><asp:Button ID="Update" runat="server" Text="Update An Order" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="Update_Click" /></td>
                    <td ><asp:Button ID="Delete" runat="server" Text="Delete An Order" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="Delete_Click" /></td>
                    <td ><asp:Button ID="Invoice" runat="server" Text="Generate Invoice" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="Invoice_Click" /></td>
                </tr>
            </table> 
          </asp:View>
             <asp:View ID="view1" runat="server">
                                   <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Enter Order Details:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Order_ID:</td>
                    <td>
                        <asp:TextBox ID="txtorderID" runat="server" ForeColor="Black" OnTextChanged="txtorderID_TextChanged"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtorderID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Product_ID:</td>
                    <td>
                        <asp:TextBox ID="txtproductID" runat="server" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtproductID"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_Name:</td>
                    <td>
                        
                        <asp:TextBox ID="txtproName" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtproName"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Customer_ID:</td>
                    <td>
                         <asp:TextBox ID="txtcustomerID" runat="server" ForeColor="Black"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtcustomerID"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Customer_Name</td>
                    <td>
                         <asp:TextBox ID="txtcusName" runat="server" ForeColor="Black"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtcusName"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_Price:</td>
                    <td>
                        
                        <asp:TextBox ID="txtprice" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtprice"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_Quantity:</td>
                    <td>
                        <asp:TextBox ID="txtquantity" runat="server" ForeColor="Black"></asp:TextBox>                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtquantity" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                                <tr>
                   
                    <td class="auto-style1">
                        <asp:Button ID="insertorder" runat="server" OnClick="insertorder_Click" Text="Submitt" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Font-Bold="True" Width="130px" />
                    </td>
                                    <td><asp:Label ID="lblerror" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
             </asp:View>
             <asp:View ID="view2" runat="server">
             
                  <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Enter Updated Order Details:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Select Order_ID to update order:</td>
                    <td>
                        <asp:DropdownList ID="ddl1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Order_ID" DataValueField="Order_ID" ForeColor="Black"></asp:DropdownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtorderID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                      <tr>
                    <td class="auto-style1">New Order_ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">New Product_ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">New Product_Name:</td>
                    <td>
                        
                        <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">New Customer_ID:</td>
                    <td>
                         <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">New Customer_Name</td>
                    <td>
                         <asp:TextBox ID="TextBox5" runat="server" ForeColor="Black"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">New Product_Price:</td>
                    <td>
                        
                        <asp:TextBox ID="TextBox6" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">New Product_Quantity:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" ForeColor="Black"></asp:TextBox>                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                                <tr>
                   
                    <td class="auto-style1">
                        <asp:Button ID="updateorder" runat="server" OnClick="updateorder_Click" Text="UpdateOrder" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Font-Bold="True" Width="168px" />
                    </td>
                                     <td><asp:Label ID="Label1" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
             </asp:View>
             <asp:View ID="view4" runat="server">
             
                  <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Delete Order Details:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Select Order_ID to Delete order:</td>
                    <td>
                        <asp:DropdownList ID="DropdownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Order_ID" DataValueField="Order_ID" ForeColor="Black"></asp:DropdownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtorderID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                      <tr>
             <td class="auto-style1">
                        <asp:Button ID="deleteorder" runat="server" OnClick="deleteorder_Click" Text="DeleteOrder" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Font-Bold="True" Width="165px" />
                    </td>
                </tr>
            </table>
             </asp:View>
             <asp:View ID="view5" runat="server">
             
                  <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Generate Invoice:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Select Order_ID to Generate Invoice:</td>
                    <td>
                        <asp:DropdownList ID="DropdownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Order_ID" DataValueField="Order_ID" ForeColor="Black"></asp:DropdownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtorderID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                      <tr>
             <td class="auto-style1">
                        <asp:Button ID="generate" runat="server" OnClick="generate_Click" Text="Generate" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Width="149px" />
                    </td>
                </tr>
            </table>
             </asp:View>
             <asp:View ID="view6" runat="server">

            <table style="width:64%; margin-left:150px;">
                <tr>
                    <td colspan="2"><h2>El_Qazi Cutlery Industry</h2></td>
                </tr>
                <tr>
                    <td colspan="2"><h2>Invoice Generated</h2></td>
                </tr>
                
 
                <tr>
                    <td class="auto-style1">Order_ID:</td>
                    <td>
                        <asp:Label ID="lblOrderID" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_ID:</td>
                    <td>
                        <asp:Label ID="lblProductID" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_Name:</td>
                    <td>
                        <asp:Label ID="lblProductName" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Customer_ID:</td>
                    <td>
                        <asp:Label ID="lblCustomerID" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Customer_Name:</td>
                    <td>
                        <asp:Label ID="lblCustomerName" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_Price:</td>
                    <td>
                        <asp:Label ID="lblProductPrice" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_Quantity:</td>
                    <td>
                        <asp:Label ID="lblQuantity" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Total Price:</td>
                    <td>
                        <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                                <tr>
                   
                    <td >
                       <asp:Button ID="print" runat="server" Text="Home" OnClick="Bstep2_Click" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Width="155px" Font-Bold="True" />
                    </td>
                </tr>
            </table>

        </asp:View>
         </asp:MultiView>
    </div>
    </form>
</body>
</html>
