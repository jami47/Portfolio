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
    public partial class index : System.Web.UI.Page
    {
        //Nicher line dia database er sathe connect kore.
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);


                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT * FROM About", con);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        sdr.Read();
                        AboutDesc.Text = sdr.GetValue(1).ToString().Trim();
                        //HomeDesc.InnerText = sdr.GetValue(1).ToString().Trim();
                        //HomeImg.Src = "images/"+"about.jpg";
                        /*PortfolioImg.Src = "images/" + "portfolio1.png";
                        PortfolioDesc.InnerText = "Eta kuno kotha?";
                        PortfolioHeader.InnerText = "Title";
                        PortfolioLink.HRef = "https://www.youtube.com/";*/
                    }

                    //Dynamically load the projects
                    loadprojects();

                    con.Close();
                }
                catch
                {

                }
                
            }
        }

        private void loadprojects()
        {
            SqlConnection con = new SqlConnection(strcon);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            // Execute the SQL query
            SqlCommand projectcmd = new SqlCommand("SELECT * FROM Projects", con);

            SqlDataAdapter sda = new SqlDataAdapter(projectcmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            // Bind the data table to the Repeater
            PortfolioRepeater.DataSource = dt;
            PortfolioRepeater.DataBind();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            
            string name = FullName.Text.Trim();
            string msg = Message.Text.Trim();

            if(!name.Equals(string.Empty) && !msg.Equals(string.Empty))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("INSERT into Contact ([fullname],[email],[mobile],[subject],[message]) VALUES (@fname, @email, @mobile, @subject, @msg);", con);





                    cmd.Parameters.AddWithValue("@fname", FullName.Text.Trim()); cmd.Parameters.AddWithValue("@email", EmailAddress.Text.Trim()); cmd.Parameters.AddWithValue("@mobile", MobileNumber.Text.Trim()); cmd.Parameters.AddWithValue("@subject", EmailSubject.Text.Trim()); cmd.Parameters.AddWithValue("@msg", Message.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Successfully Sent!')</script>");
                }

                catch { }
            }

            else
            {
                Response.Write("<script>alert('Wrong Input!')</script>");
            }
        }
    }
}