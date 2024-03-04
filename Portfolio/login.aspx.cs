using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class login : System.Web.UI.Page
    {
        //Nicher line dia database er sathe connect kore.
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string uname = UserName.Text.Trim();
                string upass = UserPass.Text.Trim();

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string qry = "select * from Loginfo where username=@uname and userpassword=@upass";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@uname", UserName.Text.Trim());
                cmd.Parameters.AddWithValue("@upass", UserPass.Text.Trim());
                SqlDataReader srd = cmd.ExecuteReader();
                if(srd.HasRows)
                {
                    srd.Read();
                    //Console.WriteLine( srd.GetValue(0).ToString() );
                    if(UserName.Text.Equals(srd.GetValue(0).ToString()) && UserPass.Text.Equals(srd.GetValue(1).ToString()))
                    {
                        Response.Redirect("~/admin/aboutedt.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('User Not Found')</script>");
                    }
                    //Response.Redirect("~/index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('User Not Found')</script>");
                }
            }
            catch
            {
                throw;
            }
        }
    }
}