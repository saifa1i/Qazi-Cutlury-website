<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Final_project_asp.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
   <h1 style=" text-align:center ;background-color: #000000; border-style: outset; padding: 1px; margin: 1px; display: block; font-size:65px; font-weight: bold; color: #FFFFFF" > EL_QAZI CUTLERY ADMIN PANEL</h1>
             
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
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" style="margin-left:250px;" Height="159px" Width="589px">
              <Columns>
                  <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
                  <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                  <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
                 
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Asp_FinalProjectConnectionString3 %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        <br/> <br/>
                <br/><br/>
                  <table style="width:64%; margin-left:150px;">
                <tr>
                    <td ><asp:Button ID="InsertP" runat="server" Text="Add New Product" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="InsertP_Click" /></td>
                    <td ><asp:Button ID="UpdateP" runat="server" Text="Update An Product" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="UpdateP_Click" /></td>
                    <td ><asp:Button ID="DeleteP" runat="server" Text="Delete An Product" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="DeleteP_Click" /></td>
                    <td ><asp:Button ID="DetailP" runat="server" Text="Detail Of Product" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" OnClick="InvoiceP_Click" /></td>
                </tr>
            </table> 
             </asp:View>
              <asp:View ID="view1" runat="server">
                                   <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Enter Product Details:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_ID:</td>
                    <td>
                        <asp:TextBox ID="txtProductID" runat="server" ForeColor="Black"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtProductID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Product_Name:</td>
                    <td>
                        <asp:TextBox ID="txtproductName" runat="server" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtproductName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_Price:</td>
                    <td>
                        
                        <asp:TextBox ID="txtPrice" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                     <tr>
                    <td class="auto-style1">Product Photo:</td>
                    <td>
                        
                        <asp:FileUpload ID="FileUpload2" runat="server" ForeColor="Black" />
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload2" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>                  <tr>
                    <td class="auto-style1">
                        <asp:Button ID="insertProduct" runat="server" OnClick="insertproduct_Click" Text="Submitt" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Font-Bold="True" Width="125px" />
                    </td>
                     <td><asp:Label ID="lblerror" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
             </asp:View>
             <asp:View ID="view2" runat="server">
             
                  <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Enter Updated Product Details:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Select Product_ID to update Product:</td>
                    <td>
                        <asp:DropdownList ID="ddl1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Product_ID" DataValueField="Product_ID" ForeColor="Black"></asp:DropdownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddl1" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                      <tr>
                    <td class="auto-style1">New Product_ID:</td>
                    <td>
                        <asp:TextBox ID="txtProductsID" runat="server" ForeColor="Black"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProductsID" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">New Product_Name:</td>
                    <td>
                        <asp:TextBox ID="TxtproductsName" runat="server" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="TxtproductsName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">New Product_Price:</td>
                    <td>
                        
                        <asp:TextBox ID="txtprices" runat="server" ForeColor="Black"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Field Required" ForeColor="Red" ControlToValidate="txtprices"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                     <tr>
                    <td class="auto-style1">Product Photo:</td>
                    <td>
                        
                        <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" />
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                                  <tr>
                   
                    <td class="auto-style1">
                        <asp:Button ID="updateproduct" runat="server" OnClick="updateproduct_Click" Text="UpdateProduct" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Font-Bold="True" />
                    </td>
                                       <td><asp:Label ID="Label1" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
             </asp:View>
         <asp:View ID="view3" runat="server">
             
                  <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Delete Product:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Select Product_ID to delete Product:</td>
                    <td>
                        <asp:DropdownList ID="ddl2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Product_ID" DataValueField="Product_ID" Font-Bold="True" ForeColor="Black"></asp:DropdownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddl2" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                                          <tr>
                   
                    <td class="auto-style1">
                        <asp:Button ID="deleteproduct" runat="server" OnClick="deleteproduct_Click" Text="DeleteProduct" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" />
                    </td>
                </tr>
             </table>
             </asp:View>
             <asp:View ID="view4" runat="server">
                                   <table style="color:black;width:64%; margin-left:150px;" border="0">
                <tr>
                    <td colspan="2"><h1 style="font-style:oblique;color:white;background-color:black;">Product Details:</h1></td>
                </tr>
                <tr>
                    <td class="auto-style1">Select Product ID to view details:</td>
                                       <td>
                        <asp:DropdownList ID="ddl3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Product_ID" DataValueField="Product_ID" ForeColor="Black"></asp:DropdownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddl3" ErrorMessage="*Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                                          <tr>
                   
                    <td class="auto-style1">
                        <asp:Button ID="details" runat="server" OnClick="detailsproduct_Click" Text="DetailProduct" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Width="135px" />
                    </td>
                </tr>
                                       <tr>
                    <td class="auto-style1">Product_ID:</td>
                    <td>
                        <asp:Label ID="lblProductID" runat="server"></asp:Label>
                          
                        
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Product_Name:</td>
                    <td>
                        <asp:Label ID="lblProductName" runat="server"></asp:Label>
                         </td>
                </tr>
                <tr>
                    <td class="auto-style1">Product_Price:</td>
                    <td>
                        
                        <asp:Label ID="lblProductPrice" runat="server"></asp:Label>
                        
                        
                    </td>
                </tr>
                     <tr>
                    <td class="auto-style1">Product Photo:</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" />
                        
                    </td>
                </tr>                  <tr>
                    <td class="auto-style1">
                        <asp:Button ID="print" runat="server" OnClick="printproduct_Click" Text="Print" BackColor="#0000CC" BorderStyle="Double" ForeColor="White" Width="135px" />
                    </td>
                </tr>
            </table>
             </asp:View>    
         </asp:MultiView>
    </div>
       </form>
</body>
</html>
