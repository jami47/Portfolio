using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Web.Services.Description;

namespace Portfolio.admin
{
    public partial class addprojects : System.Web.UI.Page
    {
        //Nicher line dia database er sathe connect kore.
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            
                try
                {
                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    // Execute the SQL query
                    string title = Title.Text.Trim();
                    string link = Link.Text.Trim();
                    string desc = Description.Text.Trim();
                    string image = FileNameLabel.Text.Trim();


                    if (!title.Equals(string.Empty) && !link.Equals(string.Empty) && !desc.Equals(string.Empty) && !image.Equals(string.Empty))
                    {
                        try
                        {
                            SqlCommand cmd = new SqlCommand("INSERT into Projects ([img],[title],[description],[link]) VALUES (@image, @title, @desc, @link);", con);

                            cmd.Parameters.AddWithValue("@image", image); 
                            cmd.Parameters.AddWithValue("@title", title); 
                            cmd.Parameters.AddWithValue("@desc", desc);
                            cmd.Parameters.AddWithValue("@link",link); 

                            cmd.ExecuteNonQuery();
                            con.Close();

                            //Response.Write("<script>alert('Successfully Added!')</script>");

                            //Show a prompt and then go back
                            string script = "<script type=\"text/javascript\">alert('Successfully Added!'); window.location='projectsedt.aspx';</script>";
                            ClientScript.RegisterStartupScript(this.GetType(), "Alert", script);

                            Title.Text = null;
                            Link.Text = null;
                            Description.Text = null;
                        }

                        catch { }
                    }

                    else
                    {
                        Response.Write("<script>alert('Wrong Input!')</script>");
                    }
                }
                catch
                {
                    throw;
                }

            
        }
    }
}