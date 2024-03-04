using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Portfolio.admin
{
    public partial class aboutedt : System.Web.UI.Page
    {
        //Nicher line dia database er sathe connect kore.
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            //Go back to login page if unauthorized person tries to access
                if (Session["authorization_check"] == null)
                {
                    //Response.Redirect("~/login.aspx");
                    //Show a prompt and then go back
                    string script = "<script type=\"text/javascript\">alert('Unauthorized Access Detected!'); window.location='../login.aspx';</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", script);
                }
            
            try
            {
                if (!IsPostBack) 
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

                        Message.Text = sdr.GetValue(1).ToString().Trim();

                        /*CourseIdTextBox.Text = sdr.GetValue(0).ToString();
                        CourseCodeTextBox.Text = sdr.GetValue(1).ToString();
                        CourseNameTextBox.Text = sdr.GetValue(2).ToString();
                        CourseYearDropDownList.SelectedValue = sdr.GetValue(3).ToString();
                        CourseTermDropDownList.SelectedValue = sdr.GetValue(4).ToString();
                        CourseTeacher1TextBox.Text = sdr.GetValue(5).ToString();
                        CourseTeacher2TextBox.Text = sdr.GetValue(6).ToString();*/

                    }

                    con.Close();

                }
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert( 'Exception : " + ex.Message + "')</script>");
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                string msg = Message.Text.Trim();

                SqlConnection con = new SqlConnection(strcon);


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update About set description=@msg where id=1", con);
                cmd.Parameters.AddWithValue("@msg", Message.Text.Trim());
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Description Updated!')</script>");
            }
            catch 
            {
                
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();

            if (Session["uname"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
        }
    }
}