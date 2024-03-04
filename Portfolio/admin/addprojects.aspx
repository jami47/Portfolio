<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addprojects.aspx.cs" Inherits="Portfolio.admin.addprojects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Add Projects</title>

    <!-- Box Icons -->
    <link href = 'https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel= 'stylesheet'/>

    <!-- Custom CSS File -->
    <link rel = "stylesheet" href="../css/styles.css"/>

    <style>
        .button-70 {   background-image: linear-gradient(#0dccea, #0d70ea);   border: 0;   border-radius: 4px;   box-shadow: rgba(0, 0, 0, .3) 0 5px 15px;   box-sizing: border-box;   color: #fff;   cursor: pointer;   font-family: Montserrat,sans-serif;   font-size: .9em;   margin: 5px;   padding: 10px 15px;   text-align: center;   user-select: none;   -webkit-user-select: none;   touch-action: manipulation; }

        .button-12 {display: flex;flex-direction: column;align-items: center;padding: 6px 14px;font-family: -apple-system, BlinkMacSystemFont, 'Roboto', sans-serif;border-radius: 6px;border: none;background: #6E6D70;box-shadow: 0px 0.5px 1px rgba(0, 0, 0, 0.1), inset 0px 0.5px 0.5px rgba(255, 255, 255, 0.5), 0px 0px 0px 0.5px rgba(0, 0, 0, 0.12);color: #DFDEDF;user-select: none;-webkit-user-select: none;touch-action: manipulation;}.button-12:focus {box-shadow: inset 0px 0.8px 0px -0.25px rgba(255, 255, 255, 0.2), 0px 0.5px 1px rgba(0, 0, 0, 0.1), 0px 0px 0px 3.5px rgba(58, 108, 217, 0.5);outline: 0; }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        
        <!--! Project Section -->
        <section class="contact" id="contact">
            <h2 class="heading">Add <span>Projects</span></h2>

            <asp:Panel runat="server" CssClass="contact-form">
                <div class="input-box" style="margin-top:15rem;">
                    <asp:TextBox runat="server" ID="Title" placeholder="Title" />
                    <asp:TextBox runat="server" ID="Link" placeholder="Link" />
                </div>
                <!--<div class="input-box">-->
                    <asp:TextBox runat="server" ID="Description" placeholder="Description" TextMode="MultiLine" Columns="30" Rows="2"/>
                    <!--<asp:TextBox runat="server" ID="EmailSubject" placeholder="Email Subject" /> -->
                <!--</div> -->
                

                <!-- File Upload Control -->
                <!-- Button to trigger file upload -->
                <!-- Label to display the selected file name -->
                <asp:FileUpload ID="FileUpload1" runat="server" Width="85px" Text="Browse" />
                <p style="color:#1f242d">hello</p>
                <p></p>
                <p>
                <asp:Button ID="UploadButton" runat="server" Text="Upload" OnClick="UploadButton_Click" class="button-70" role="button" Text-size="25px"/>
                </p>
                <p style="color:#1f242d">Hello</p>
                <p>
                <asp:Label ID="FileNameLabel" runat="server" />
                </p>

                <asp:Button runat="server" ID="SubmitButton" Text="Add Project" CssClass="btn" OnClick="SubmitButton_Click"  />

            </asp:Panel>

        </section>

    </form>
</body>
</html>
