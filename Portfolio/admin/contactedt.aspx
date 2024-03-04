<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactedt.aspx.cs" Inherits="Portfolio.admin.contactedt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Portfolio</title>

    <link rel="stylesheet" href="../css/styles.css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <a href="#" class="logo">Admin</a>

            <nav class="navbar">
                <a href="#">Home</a>
                <a href="#">About</a>
                <a href="#">Services</a>
                <a href="#">Projects</a>
                <a href="#">Contact</a>
                <a href="#" id="logout">Logout</a>
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
    </form>
</body>
</html>
