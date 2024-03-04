<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updelprojects.aspx.cs" Inherits="Portfolio.admin.updelprojects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Update Projects</title>

    <!-- Box Icons -->
    <link href = 'https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel= 'stylesheet'/>

    <!-- Custom CSS File -->
    <link rel = "stylesheet" href="../css/styles.css"/>

    <style>
        .button-70 {   background-image: linear-gradient(#0dccea, #0d70ea);   border: 0;   border-radius: 4px;   box-shadow: rgba(0, 0, 0, .3) 0 5px 15px;   box-sizing: border-box;   color: #fff;   cursor: pointer;   font-family: Montserrat,sans-serif;   font-size: .9em;   margin: 5px;   padding: 10px 15px;   text-align: center;   user-select: none;   -webkit-user-select: none;   touch-action: manipulation; }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <!--! Project Section -->
<section class="contact" id="contact">
    <h2 class="heading">Update <span>Projects</span></h2>

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
        <asp:Button ID="UploadButton" runat="server" Text="Upload" class="button-70" role="button" Text-size="25px" OnClick="UploadButton_Click"/>
        </p>
        <p style="color:#1f242d">Hello</p>
        <p>
        <asp:Label ID="FileNameLabel" runat="server" />
        </p>

        <asp:Button runat="server" ID="UpdateButton" Text="Update Project" CssClass="btn" OnClick="UpdateButton_Click"  />

        <asp:Button runat="server" ID="DeleteButton" Text="Delete Project" CssClass="btn" style="margin-left:3rem;background:red;" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure?');" />

    </asp:Panel>

</section>
    </form>
</body>
</html>
