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

namespace Portfolio.admin
{
    public partial class projectsedt : System.Web.UI.Page
    {
        //Nicher line dia database er sathe connect kore.
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Go back to login page if unauthorized person tries to access
            if (Session["authorization_check"] == null)
            {
                //Show a prompt and then go back
                    string script = "<script type=\"text/javascript\">alert('Unauthorized Access Detected!'); window.location='../login.aspx';</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", script);
            }

            /*if (IsPostBack)
            {
                // Refresh the page without repeating the last action
                Response.Redirect(Request.RawUrl);
                //Server.TransferRequest(Request.Url.AbsolutePath, false);
            }*/
            if (!IsPostBack)
            {
                try
                {
                    BindDataToRepeater();
                }
                catch
                {
                    throw;
                }
                
            }
        }

        protected void BindDataToRepeater()
        {
            SqlConnection con = new SqlConnection(strcon);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            // Execute the SQL query
            SqlCommand cmd = new SqlCommand("SELECT * FROM Projects", con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            // Bind the data table to the Repeater
            PortfolioRepeater.DataSource = dt;
            PortfolioRepeater.DataBind();
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
                    FileNameLabel.Text = "Selected File: " + fileName;
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
    /*protected void AddProjectBtn_Click(object sender, EventArgs e)
    {

    }*/
}