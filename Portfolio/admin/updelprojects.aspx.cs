using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio.admin
{
    public partial class updelprojects : System.Web.UI.Page
    {
        string id;
        //Nicher line dia database er sathe connect kore.
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Go back to login page if unauthorized person tries to access
            if (Session["authorization_check"] == null)
            {
                //Show a prompt and then go back
                string go_back = "<script type=\"text/javascript\">alert('Unauthorized Access Detected!'); window.location='../login.aspx';</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", go_back);
            }

            if (!IsPostBack)
            {
                //Used QUERY_STRING over here.
                id = Request.QueryString["id"];
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if(con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    //SQL
                    SqlCommand fetchcmd = new SqlCommand("select * from Projects where id="+id+"", con);

                    SqlDataReader sdr = fetchcmd.ExecuteReader();

                    if(sdr.HasRows)
                    {
                        sdr.Read();
                        Title.Text = sdr["title"].ToString();
                        Link.Text = sdr["link"].ToString();
                        Description.Text = sdr["description"].ToString();
                        FileNameLabel.Text = sdr["img"].ToString();

                    }
                }
                catch
                {
                    //throw;
                }
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                id = Request.QueryString["id"];
                // Execute the SQL query
                string title = Title.Text.Trim();
                string link = Link.Text.Trim();
                string desc = Description.Text.Trim();
                string image = FileNameLabel.Text.Trim();

                if (!title.Equals(string.Empty) && !link.Equals(string.Empty) && !desc.Equals(string.Empty) && !image.Equals(string.Empty) && !id.Equals(null))
                {
                    SqlConnection con = new SqlConnection(strcon);


                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("Update Projects set img=@image,title=@title,description=@desc,link=@link where id="+id+"", con);
                    cmd.Parameters.AddWithValue("@image", image);
                    cmd.Parameters.AddWithValue("@title", title);
                    cmd.Parameters.AddWithValue("@desc", desc);
                    cmd.Parameters.AddWithValue("@link", link);
                    cmd.ExecuteNonQuery();

                    con.Close();

                    //Show a prompt and then go back
                    string script = "<script type=\"text/javascript\">alert('Successfully Updated!'); window.location='projectsedt.aspx';</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", script);

                    //Response.Write("<script>alert('Successfully Updated!')</script>");

                    //Response.Redirect("~/admin/projectsedt.aspx");

                    //Go back to previous page
                    /*if (Request.UrlReferrer != null)
                    {
                        string previousPageUrl = Request.UrlReferrer.PathAndQuery;
                        Response.Redirect("~/"+previousPageUrl);
                    }*/
                }

            }
            catch
            {
               // throw;
            }
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            // Check if a file has been selected
            if (FileUpload1.HasFile)
            {
                try
                {
                    // Get the file name
                    string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                    // Display the file name in the Label
                    //FileNameLabel.Text = "Selected File: " + fileName;
                    FileNameLabel.Text = fileName;
                }
                catch (Exception ex)
                {
                    // Handle any errors
                    FileNameLabel.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                // No file selected
                FileNameLabel.Text = "Please select a file.";
            }
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            try
            {
                //Used QUERY_STRING over here.
                id = Request.QueryString["id"];
                SqlConnection con = new SqlConnection(strcon);


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if(!id.Equals(string.Empty))
                {
                        SqlCommand dcmd = new SqlCommand("DELETE FROM Projects WHERE Id=@Id", con);
                        dcmd.Parameters.AddWithValue("@Id", id);

                        dcmd.ExecuteNonQuery();

                        con.Close();

                        Response.Redirect("~/admin/projectsedt.aspx");
                }
                
            }
            catch
            {
                //throw;
            }
        }
    }
}