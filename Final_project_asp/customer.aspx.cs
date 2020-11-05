using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace Final_project_asp
{
    public partial class customer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=15081598-123-SE;Initial Catalog=Asp_FinalProject;Integrated Security=True;");
        Byte[] img;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                multiview4.ActiveViewIndex = 0;
            }

        }

        protected void InsertC_Click(object sender, EventArgs e)
        {
            multiview4.ActiveViewIndex = 1;
        }

        protected void UpdateC_Click(object sender, EventArgs e)
        {
            multiview4.ActiveViewIndex = 2;
        }

        protected void DeleteC_Click(object sender, EventArgs e)
        {
            multiview4.ActiveViewIndex = 3;
        }

        protected void InvoiceC_Click(object sender, EventArgs e)
        {
            multiview4.ActiveViewIndex = 4;
        }

        protected void insertCustomer_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedfile = FileUpload3.PostedFile;
            string fileName = Path.GetFileName(postedfile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            int fileSize = postedfile.ContentLength;


            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".jpeg" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
            {
                Stream stream = postedfile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                img = binaryReader.ReadBytes((int)stream.Length);

            }
            else
            {

            }
            try
            {
                string sql1 = " insert into Customers values (" + txtCustomerID.Text + ",'" + txtCustomerName.Text + "'," + txtorderId.Text + "," + txtmobile.Text + ",'" + txtaddress.Text + "',@img)";

                con.Open();
                SqlCommand cmd = new SqlCommand(sql1, con);
                cmd.Parameters.Add(new SqlParameter("@img", img));
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/customer.aspx");
            }
            catch (Exception exception)
            {
                lblerror.Text = "You have entered wrong value";
            }
        }

        protected void updateCustomer_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedfile = FileUpload4.PostedFile;
            string fileName = null; fileName = Path.GetFileName(postedfile.FileName);
            string fileExtension = null; fileExtension = Path.GetExtension(fileName);
            int fileSize = 0; fileSize = postedfile.ContentLength;


            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".jpeg" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
            {
                Stream stream = postedfile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                img = binaryReader.ReadBytes((int)stream.Length);

            }
            else
            {

            }

            try
            {
                string sql1 = "update Customers set Customer_ID=" + txtCustomersID.Text + ", Customer_Name= '" + txtCustomersName.Text + "', Order_ID=" + txtordersID.Text + ",Mobile=" + txtmobiles.Text + ", Address= '" + txtaddresss.Text + "', Image= @img  where Customer_ID = " + ddl1.SelectedItem.Text + "";

                con.Open();
                SqlCommand cmd = new SqlCommand(sql1, con);
                cmd.Parameters.Add(new SqlParameter("@img", img));
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/customer.aspx");
            }
            catch (Exception exce)
            {
                Label1.Text = "You have entered wrong value";
            }
        }

        protected void deletecustomer_Click(object sender, EventArgs e)
        {
            string sql1 = " delete from Customers where Customer_ID =" + ddl2.SelectedItem.Text + "";

            con.Open();
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/customer.aspx");

        }

        protected void detailsCustomer_Click(object sender, EventArgs e)
        {
            string sql = " Select * from Customers where Customer_ID = " + ddl3.SelectedItem.Text + "";

            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {

                lblCustomerID.Text = reader[0].ToString();
                lblCustomerName.Text = reader[1].ToString();
                lblOrderID.Text = reader[2].ToString();
                lblmobile.Text = reader[3].ToString();
                lbladdress.Text = reader[4].ToString();
                byte[] img = (byte[])(reader[5]);
                string str = Convert.ToBase64String(img);
                Image1.ImageUrl = "data:Image/png;base64," + str;

            }


        }

        protected void printcustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin_HomePage.aspx");
        }
    }
}