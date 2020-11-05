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
    public partial class admin_Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=15081598-123-SE;Initial Catalog=Asp_FinalProject;Integrated Security=True;");
        Byte[] img; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                profile.ActiveViewIndex = 0;
            }
        }

        protected void Bstep2_Click(object sender, EventArgs e)
        {
            profile.ActiveViewIndex = 2;
        }

        protected void Button2_Click(object sender, EventArgs e)
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
                string sql1 = " update LogIn set UserID='" + txtnewID.Text + "', Password='" + txtpass.Text + "', Name= '" + txtname.Text + "',[Father Name]= '" + txtfather.Text + "', Mobile =" + txtmobile.Text + " , Address='" + txtaddress.Text + "',email= '" + txtemail.Text + "', Imagr= @img, gender='" + rgender.Text + "' where UserID ='" + txtuser.Text + "' ";

                con.Open();
                SqlCommand cmd = new SqlCommand(sql1, con);
                cmd.Parameters.Add(new SqlParameter("@img", img));
                cmd.ExecuteNonQuery();
                con.Close();
                profile.ActiveViewIndex = 1;
            }
            catch (Exception exception)
            {
                Label1.Text = "YOu have entered wrong value";
            }
        }
        protected void pro_Click(object sender, EventArgs e)
        {
            string sql = " Select * from LogIn";

            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                
               lbluser.Text = reader[0].ToString();
                lblpass.Text = reader[1].ToString();
                lblname.Text = reader[2].ToString();
                lblfather.Text = reader[3].ToString();
                lblmobile.Text = reader[4].ToString();
                lbladdress.Text = reader[5].ToString();
                lblemail.Text = reader[6].ToString();
                byte[] img = (byte[])(reader[7]);
                string str = Convert.ToBase64String(img);
                Image1.ImageUrl = "data:Image/png;base64," + str;
                lblgender.Text = reader[8].ToString();

            }
            con.Close();
            profile.ActiveViewIndex = 1;
        }
}
}