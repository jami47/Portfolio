<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutedt.aspx.cs" Inherits="Portfolio.admin.aboutedt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Edit</title>

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
        <h2 class="heading">About <span>Edit</span></h2>

        <h1 style="color:red;text-align:center">Description</h1>

        <asp:Panel runat="server" CssClass="contact-form">
            <asp:TextBox runat="server" ID="Message" TextMode="MultiLine" Columns="30" Rows="10" placeholder="About Description" />
            <asp:Button runat="server" ID="SubmitButton" Text="Update Description" CssClass="btn" OnClick="SubmitButton_Click" />
        </asp:Panel>

    </section>
    </form>
</body>
</html>
