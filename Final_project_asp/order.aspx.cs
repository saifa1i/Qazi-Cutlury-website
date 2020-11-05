using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Final_project_asp
{
    public partial class order : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=15081598-123-SE;Initial Catalog=Asp_FinalProject;Integrated Security=True;");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             multiview1.ActiveViewIndex = 0;
            }
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            multiview1.ActiveViewIndex = 1;
            
        }
        protected void insertorder_Click(object sender, EventArgs e)
        {
            try
            {
                string sql1 = " insert into Orders values (" + txtorderID.Text + "," + txtproductID.Text + ",'" + txtproName.Text + "'," + txtcustomerID.Text + ",'" + txtcusName.Text + "'," + txtprice.Text + "," + txtquantity.Text + ")";

                con.Open();
                SqlCommand cmd = new SqlCommand(sql1, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/order.aspx");
            }
            catch (Exception exception)
            {
                lblerror.Text = "You have enter a wrong value.";
            }
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            multiview1.ActiveViewIndex = 2;
        }

        protected void updateorder_Click(object sender, EventArgs e)
        {
            try
            {
                string sql1 = " update Orders set Order_ID = " + TextBox1.Text + ", Product_ID=" + TextBox2.Text + ", Product_Name='" + TextBox3.Text + "', Customer_ID=" + TextBox4.Text + ", Customer_Name='" + TextBox5.Text + "', Product_Price=" + TextBox6.Text + ", Product_Quantity=" + TextBox7.Text + "  where Order_ID =" + ddl1.SelectedItem.Text + " ";

                con.Open();
                SqlCommand cmd = new SqlCommand(sql1, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/order.aspx");
            }
            catch (Exception exception)
            {
                Label1.Text = "You have entered wrong value:";
            }
        }
        protected void deleteorder_Click(object sender, EventArgs e)
        {
            string sql1 = " delete from Orders where Order_ID =" + DropdownList1.SelectedItem.Text + "";

            con.Open();
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/order.aspx");
        }
       


                protected void Delete_Click(object sender, EventArgs e)
        {
            multiview1.ActiveViewIndex = 3;
        }

                protected void Invoice_Click(object sender, EventArgs e)
                {
                    multiview1.ActiveViewIndex = 4;
                }

                protected void generate_Click(object sender, EventArgs e)
                {
                    string sql = " Select * from Orders";

                    con.Open();
                    SqlCommand cmd = new SqlCommand(sql, con);
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    if (reader.HasRows)
                    {
                        
                        lblOrderID.Text = reader[0].ToString();
                        lblProductID.Text = reader[1].ToString();
                        lblProductName.Text = reader[2].ToString();
                        lblCustomerID.Text = reader[3].ToString();
                        lblCustomerName.Text = reader[4].ToString();
                        lblProductPrice.Text = reader[5].ToString();
                        lblQuantity.Text = reader[6].ToString();
                        lblTotal.Text = reader[7].ToString();

                    }
                    con.Close();
                    multiview1.ActiveViewIndex = 5;
                }
                protected void Bstep2_Click(object sender, EventArgs e)
                {
                    Response.Redirect("~/Admin_HomePage.aspx");
                }
                protected void txtorderID_TextChanged(object sender, EventArgs e)
                {

                }
}
}