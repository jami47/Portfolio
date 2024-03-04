using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio.admin
{
    public partial class contactedt : System.Web.UI.Page
    {
        //Nicher line dia database er sathe connect kore.
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Register a startup script that scrolls to the bottom of the page
            string script = "window.onload = function() { window.scrollTo(0, document.body.scrollHeight); }";
            ClientScript.RegisterStartupScript(this.GetType(), "ScrollToBottom", script, true);

            if (!IsPostBack)
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    // Execute the SQL query
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Contact", con);
                    SqlDataReader sdr = cmd.ExecuteReader();

                    // Initialize an empty list to store the records
                    List<string> records = new List<string>();

                    // Loop through the rows
                    while (sdr.Read())
                    {
                        // Convert each row to a string and store it in the list
                        string record = "Full Name: "+sdr["fullname"].ToString() + "\n" + "Email: "+ sdr["email"].ToString() + "\n" + "Mobile: " +  sdr["mobile"].ToString() + "\n" + "Subject: " + sdr["subject"].ToString() + "\n" + sdr["message"].ToString();
                        records.Add(record);
                    }

                    // Bind the list of strings to the Repeater
                    Repeater1.DataSource = records;
                    Repeater1.DataBind();
                }
                
                catch 
                { 
                
                }
            }
        }
    }
}