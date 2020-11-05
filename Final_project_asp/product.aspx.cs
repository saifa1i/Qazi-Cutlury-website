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
using System.IO;
namespace Final_project_asp
{
    public partial class product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=15081598-123-SE;Initial Catalog=Asp_FinalProject;Integrated Security=True;");
        Byte[] img;
       
 protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                multiview1.ActiveViewIndex = 0;
            }
        }

        protected void InsertP_Click(object sender, EventArgs e)
        {
            multiview1.ActiveViewIndex = 1;
        }
        protected void insertproduct_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedfile = FileUpload2.PostedFile;
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
                string sql1 = " insert into Products values (" + txtProductID.Text + ",'" + txtproductName.Text + "'," + txtPrice.Text + ",@img)";

                con.Open();
                SqlCommand cmd = new SqlCommand(sql1, con);
                cmd.Parameters.Add(new SqlParameter("@img", img));
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/product.aspx");
            }
            catch (Exception ex)
            {
                lblerror.Text = "You have entered wrong value"; 
            }
        }
        protected void UpdateP_Click(object sender, EventArgs e)
        {
            multiview1.ActiveViewIndex = 2;
        }
        protected void DeleteP_Click(object sender, EventArgs e)
        {
            multiview1.ActiveViewIndex = 3;
        }
        protected void InvoiceP_Click(object sender, EventArgs e)
        {
            multiview1.ActiveViewIndex = 4;
        }
        protected void updateproduct_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedfile = FileUpload1.PostedFile;
            string fileName = null; fileName= Path.GetFileName(postedfile.FileName);
            string fileExtension = null; fileExtension= Path.GetExtension(fileName);
            int fileSize = 0;fileSize= postedfile.ContentLength;


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
                string sql1 = "update Products set Product_ID=" + txtProductsID.Text + ", Product_Name= '" + TxtproductsName.Text + "', Product_Price=" + txtprices.Text + ", Image= @img where Product_ID = " + ddl1.SelectedItem.Text + "";

                con.Open();
                SqlCommand cmd = new SqlCommand(sql1, con);
                cmd.Parameters.Add(new SqlParameter("@img", img));
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/product.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = "You have entered wrong value";
            }
        }
        protected void deleteproduct_Click(object sender, EventArgs e)
        {
            string sql1 = " delete from Products where Product_ID =" + ddl2.SelectedItem.Text + "";

            con.Open();
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/product.aspx");
        }
        protected void detailsproduct_Click(object sender, EventArgs e)
        {
             string sql = " Select * from Products where Product_ID = "+ddl3.SelectedItem.Text+"";

            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                
               lblProductID.Text = reader[0].ToString();
                lblProductName.Text = reader[1].ToString();
                lblProductPrice.Text = reader[2].ToString();
                  byte[] img = (byte[])(reader[3]);
                string str = Convert.ToBase64String(img);
                Image1.ImageUrl = "data:Image/png;base64," + str;
                

            }
            con.Close();
            multiview1.ActiveViewIndex = 4;
        }

        protected void printproduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin_HomePage.aspx");
        }
}
}
