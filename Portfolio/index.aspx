<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Portfolio.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Portfolio</title>

    <!-- Box Icons -->
    <link href = 'https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel= 'stylesheet'>

    <!-- Custom CSS File -->
    <link rel = "stylesheet" href="css/styles.css">
</head>
<body>
    <form id="form1" runat="server">
             <!--! Header Design -->
    <header class="header">
        <a href="#" class="logo">Portfolio</a>

        <i class="bx bx-menu" id="menu-icon"></i>

        <nav class="navbar">
            <a href="#home" class="active">Home</a>
            <a href="#about">About</a>
            <a href="#services">Services</a>
            <a href="#portfolio">Portfolio</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>

    <!--! Home Section-->
    <section class="home" id="home">
        <div class="home-content">
            <h3> Hello, It's me</h3>
            <h1>Hemayetul Islam Jami</h1>
            <h3>And I'm a <span class="multiple-text"></span></h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quibusdam optio delectus unde cumque, repellendus recusandae! Nemo non dignissimos unde commodi perferendis? Architecto sed minima amet quam excepturi dolores distinctio impedit.</p>
            <div class="social-media">
                <a href="https://www.facebook.com/jami.978" target="_blank"><i class='bx bxl-facebook' ></i></a>
                <a href="https://twitter.com/" target="_blank"><i class='bx bxl-twitter' ></i></a>
                <a href="https://github.com/jami47" target="_blank"><i class='bx bxl-github'></i></a>
                <a href="https://bd.linkedin.com/" target="_blank"><i class='bx bxl-linkedin' ></i></a>
            </div>
            <a href="assets/my-cv.pdf" class="btn" download>Download CV</a>
        </div>

        <div class="home-img">
            <img src="images/home.jpg" alt="">
        </div>
    </section>

    <!--! About Section -->
    <section class="about" id="about">
        <div class="about-img">
            <img src="images/about.jpg" alt="">
        </div>

        <div class="about-content">
            <h2 class="heading">About <span>Me</span></h2>
            <h3>Frontend Developer</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                Ex quia nam at, doloribus exercitationem dolorum ut possimus voluptates nemo! 
                Obcaecati sit at adipisci, et recusandae vel quia natus doloremque impedit autem beatae, dolorem porro possimus sint consequatur atque quos ratione laborum fuga incidunt? 
                Voluptatum, deleniti illum.</p>
            <a href="#" class="btn">Read More</a>
        </div>
    </section>

    <!--! Services Section -->
    <section class="services" id="services">
        <h2 class="heading">Our <span>Services</span></h2>

        <div class="services-container">
            <div class="services-box">
                <i class='bx bx-code-alt'></i>
                <h3>Web Development</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                    Corporis possimus tenetur blanditiis optio fuga reprehenderit assumenda doloribus quaerat ad est.</p>
                <a href="#" class="btn">Read More</a>
            </div>

            <div class="services-box">
                <i class='bx bxs-paint'></i>
                <h3>Graphics Design</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                    Corporis possimus tenetur blanditiis optio fuga reprehenderit assumenda doloribus quaerat ad est.</p>
                <a href="#" class="btn">Read More</a>
            </div>

            <div class="services-box">
                <i class='bx bx-bar-chart-alt' ></i>
                <h3>Digital Marketing</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                    Corporis possimus tenetur blanditiis optio fuga reprehenderit assumenda doloribus quaerat ad est.</p>
                <a href="#" class="btn">Read More</a>
            </div>
        </div>
    </section>

    <!--! Portfolio Section  -->
    <section class="portfolio" id="portfolio">
        <h2 class="heading">Latest <span>Projects</span></h2>

        <div class="portfolio-container">
            <div class="portfolio-box">
                <img src="images/portfolio1.png" alt="">
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div> 
            </div>

            <div class="portfolio-box">
                <img src="images/portfolio2.png" alt="">
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>

            <div class="portfolio-box">
                <img src="images/portfolio3.png" alt="">
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>

            <div class="portfolio-box">
                <img src="images/portfolio4.png" alt="">
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>

            <div class="portfolio-box">
                <img src="images/portfolio5.png" alt="">
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>

            <div class="portfolio-box">
                <img src="images/portfolio6.png" alt="">
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
        </div>
    </section>

    <!--! Contact Section -->
    <section class="contact" id="contact">
        <h2 class="heading">Contact <span>Me!</span></h2>

        <asp:Panel runat="server" CssClass="contact-form">
            <div class="input-box">
                <asp:TextBox runat="server" ID="FullName" placeholder="Full Name" />
                <asp:TextBox runat="server" ID="EmailAddress" TextMode="Email" placeholder="Email Address" />
            </div>
            <div class="input-box">
                <asp:TextBox runat="server" ID="MobileNumber" TextMode="number" placeholder="Mobile Number" />
                <asp:TextBox runat="server" ID="EmailSubject" placeholder="Email Subject" />
            </div>
            <asp:TextBox runat="server" ID="Message" TextMode="MultiLine" Columns="30" Rows="10" placeholder="Your Message" />
            <asp:Button runat="server" ID="SubmitButton" Text="Send Message" CssClass="btn" />
        </asp:Panel>
    </section>

    <!--! Footer Section -->
    <footer class="footer">
        <div class="footer-text">
            <p>Copyright &copy; 2024 by Jami | All Rights Reserved</p>
        </div>

        <div class="footer-iconTop">
            <a href="#home"><i class='bx bxs-up-arrow-alt'></i></a>
        </div>
    </footer>

    <!--! Scroll Reveal -->
    <script src="https://unpkg.com/scrollreveal"></script>

    <!--! Typed JS -->
    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>

    <script src="js/script.js"></script>
    </form>
</body>
</html>
