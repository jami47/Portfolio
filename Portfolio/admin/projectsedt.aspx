<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projectsedt.aspx.cs" Inherits="Portfolio.admin.projectsedt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Projects Edit</title>
    <style>
    .button-12 {align-items: center;padding: 6px 14px;font-family: -apple-system, BlinkMacSystemFont, 'Roboto', sans-serif;border-radius: 6px;border: none;background: #6E6D70;box-shadow: 0px 0.5px 1px rgba(0, 0, 0, 0.1), inset 0px 0.5px 0.5px rgba(255, 255, 255, 0.5), 0px 0px 0px 0.5px rgba(0, 0, 0, 0.12);color: #DFDEDF;user-select: none;-webkit-user-select: none;touch-action: manipulation;}.button-12:focus {box-shadow: inset 0px 0.8px 0px -0.25px rgba(255, 255, 255, 0.2), 0px 0.5px 1px rgba(0, 0, 0, 0.1), 0px 0px 0px 3.5px rgba(58, 108, 217, 0.5);outline: 0; }
    .button-12:hover {cursor:pointer;}
    </style>

    

    <!-- Box Icons -->
    <link href = 'https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel= 'stylesheet'/>

    <!-- Custom CSS File -->
    <link rel = "stylesheet" href="../css/styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <!-- File Upload Control -->
        <!-- Button to trigger file upload -->
        <!-- Label to display the selected file name -->
        <!--<asp:FileUpload ID="FileUpload1" runat="server" Width="90px" Text="Browse.."/>
        <p>
        <asp:Button ID="UploadButton" runat="server" Text="Upload" OnClick="UploadButton_Click" />
        </p>
        <p>
        <asp:Label ID="FileNameLabel" runat="server" />
        </p> -->

        <header class="header">
            <a href="#" class="logo">Admin</a>

            <i class="bx bx-menu" id="menu-icon"></i>

            <nav class="navbar">
                <a href="aboutedt.aspx">About</a>
                <a href="projectsedt.aspx">Projects</a>
                <a href="contactedt.aspx">Contact</a>
                <!--<a href="#" id="logout"><i class='bx bx-log-out' style="font-size:2.5rem;"></i></a>
                <button runat="server"><i class='bx bx-log-out' style="font-size:2.5rem;"></i></button>-->
                <asp:Button runat="server" ID="LogoutButton" Text="Logout" CssClass="button-12" style="margin-left:4rem;"/>
            </nav>
        </header>

        <!--! Portfolio Section  -->
        <section class="portfolio" id="portfolio" style="background:green;">
                <h2 class="heading">Edit <span>Projects</span></h2>

            <div class="portfolio-container">
                <!--<div class="portfolio-box">
                    <img src="../images/portfolio1.png" alt=""/>
                    <div class="portfolio-layer">
                        <h4>Car Rental</h4>
                        <p>This is an Android application which provides users to rent cars on the fly</p>
                        <a href="#"><i class='bx bx-link-external'></i></a>
                    </div> 
                </div> -->

                <asp:Repeater ID="PortfolioRepeater" runat="server">
                    <ItemTemplate>
                        <div class="portfolio-box">
                            <img src='../images/<%# Eval("img") %>' alt=""/>
                            <div class="portfolio-layer">
                                <h4><%# Eval("title") %></h4>
                                <p><%# Eval("description") %></p>
                                <a href='updelprojects.aspx?id=<%# Eval("id") %>'><i class='bx bx-link-external'></i></a>
                            </div> 
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

           </div>
            
            <!--Button to add project-->
            <div style="display: flex;justify-content: center;align-items: center" runat="server">
                   <!--<asp:Button runat="server" ID="SubmitButton" Text="Add Project" CssClass="btn" style="margin-top:7rem; "/>-->
                <a href="addprojects.aspx" class="btn" style="margin-top:5rem; ">Add Project</a>
            </div>
            
        
       </section>
       
        <!--Script for admins-->
        <script src="../js/adminscript.js"></script>

    </form>
</body>
</html>
