<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactedt.aspx.cs" Inherits="Portfolio.admin.contactedt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Portfolio</title>

    <style>
    .button-12 {align-items: center;padding: 6px 14px;font-family: -apple-system, BlinkMacSystemFont, 'Roboto', sans-serif;border-radius: 6px;border: none;background: #6E6D70;box-shadow: 0px 0.5px 1px rgba(0, 0, 0, 0.1), inset 0px 0.5px 0.5px rgba(255, 255, 255, 0.5), 0px 0px 0px 0.5px rgba(0, 0, 0, 0.12);color: #DFDEDF;user-select: none;-webkit-user-select: none;touch-action: manipulation;}.button-12:focus {box-shadow: inset 0px 0.8px 0px -0.25px rgba(255, 255, 255, 0.2), 0px 0.5px 1px rgba(0, 0, 0, 0.1), 0px 0px 0px 3.5px rgba(58, 108, 217, 0.5);outline: 0; }
    .button-12:hover {cursor:pointer;}
    </style>

    <link rel="stylesheet" href="../css/styles.css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <a href="#" class="logo">Admin</a>

            <i class="bx bx-menu" id="menu-icon"></i>

            <nav class="navbar">
                <a href="aboutedt.aspx">About</a>
                <a href="projectsedt.aspx">Projects</a>
                <a href="#">Contact</a>
                <!--<a href="#" id="logout"><i class='bx bx-log-out' style="font-size:2.5rem;"></i></a>
                <button runat="server"><i class='bx bx-log-out' style="font-size:2.5rem;"></i></button>-->
                <asp:Button runat="server" ID="LogoutButton" Text="Logout" CssClass="button-12" style="margin-left:4rem;"/>
            </nav>
        </header>

        <section class="contact" id="contact">
            <h2 class="heading">Contact <span>Log</span></h2>

            <!--<asp:Panel runat="server" CssClass="contact-form">
                <asp:TextBox runat="server" ID="Message" TextMode="MultiLine" Columns="30" Rows="10" placeholder="Your Message" Text="Hello my friends
this is it
it is where we divide"/>
                <asp:Button runat="server" ID="SubmitButton" Text="Send Message" CssClass="btn" />
            </asp:Panel>-->

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <asp:Panel runat="server" CssClass="contact-form">
                        <asp:TextBox runat="server" ID="Message" TextMode="MultiLine" Columns="30" Rows="6" placeholder="Your Message" Text='<%# Container.DataItem %>'/>
                    </asp:Panel>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <!--Script for admins-->
        <script src="../js/adminscript.js"></script>

    </form>
</body>
</html>
