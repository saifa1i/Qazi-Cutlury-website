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
    public partial class LogIn : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=15081598-123-SE;Initial Catalog=Asp_FinalProject;Integrated Security=True;");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string sql = " Select UserID, Password from LogIn ";

            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                if (txtuser.Text == reader[0].ToString() && txtpassword.Text == reader[1].ToString() ){
                    Response.Redirect("~/Admin_HomePage.aspx");
                }
                else
                {
                    lblerror.Text = "UserID Or Password is Incorrect";
                }

            }
            con.Close();

        }
    }
}