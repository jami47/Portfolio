<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Portfolio.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Personal Portfolio</title>

    <!-- Box Icons -->
    <link href = 'https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel= 'stylesheet'/>

    <!-- Custom CSS File -->
    <link rel = "stylesheet" href="css/styles.css"/>
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
            <p runat="server" id="HomeDesc">I’m a Computer Science Engineering (CSE) student with a burning passion for all things tech. From the intricacies of programming languages to the art of development, I find joy in every bit of the process.</p>

            <p runat="server">My journey in the tech world is fueled by a relentless curiosity and a desire to create. I believe in the power of code to transform ideas into reality, and I’m always ready to learn, build, and innovate.</p>

            <p runat="server">Dive in to explore my projects, experiences, and the tech musings of a future software engineer. Welcome aboard!</p>
            <div class="social-media">
                <a href="https://www.facebook.com/jami.978" target="_blank"><i class='bx bxl-facebook' ></i></a>
                <a href="https://twitter.com/" target="_blank"><i class='bx bxl-twitter' ></i></a>
                <a href="https://github.com/jami47" target="_blank"><i class='bx bxl-github'></i></a>
                <a href="https://bd.linkedin.com/" target="_blank"><i class='bx bxl-linkedin' ></i></a>
            </div>
            <a href="assets/my-cv.pdf" class="btn" download>Download CV</a>
        </div>

        <div class="home-img">
            <img runat="server" src="images/home.jpg" id="HomeImg" alt=""/> <!--Home Image-->
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
            <asp:Label ID="AboutDesc" class="aboutdescription" runat="server" TagName="p" style="font-size: 1.6rem; margin: 2rem 0 3rem;color:white;">Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                Ex quia nam at, doloribus exercitationem dolorum ut possimus voluptates nemo! 
                Obcaecati sit at adipisci, et recusandae vel quia natus doloremque impedit autem beatae, dolorem porro possimus sint consequatur atque quos ratione laborum fuga incidunt? 
                Voluptatum, deleniti illum.</asp:Label>
            <!--<a href="#" class="btn">Read More</a>-->
        </div>
    </section>

    <!--! Services Section -->
    <section class="services" id="services">
        <h2 class="heading">Our <span>Services</span></h2>

        <div class="services-container">
            <div class="services-box">
                <i class='bx bx-code-alt'></i>
                <h3>Web Development</h3>
                <p>In my services section, I offer web development, aiming to deliver high-quality solutions. I strive for excellence, ensuring client satisfaction and fostering long-term relationships. My dedication to my work is unwavering, 
                    and I always aim to exceed expectations.</p>
                <a href="https://www.w3schools.com/whatis/" class="btn" target="_blank">Read More</a>
            </div>

            <div class="services-box">
                <i class='bx bxs-paint'></i>
                <h3>Graphics Design</h3>
                <p>Graphic design is a craft where professionals create visual content to communicate messages. By applying visual hierarchy and page layout techniques, designers use typography and pictures to meet users’ specific needs and focus on the logic of displaying elements in interactive designs, to optimize the user experience.</p>
                <a href="https://en.wikipedia.org/wiki/Graphic_design" class="btn" target="_blank">Read More</a>
            </div>

            <div class="services-box">
                <i class='bx bx-bar-chart-alt' ></i>
                <h3>Digital Marketing</h3>
                <p>Digital marketing is a multifaceted strategy aimed to target, reach out to, and build relationships with customers online, across a broad range of channels. 
                  It’s about leveraging digital technology to achieve marketing objectives</p>
                <a href="https://mailchimp.com/marketing-glossary/digital-marketing/" class="btn" target="_blank">Read More</a>
            </div>
        </div>
    </section>

    <!--! Portfolio Section  -->
    <section class="portfolio" id="portfolio">
        <h2 class="heading">Latest <span>Projects</span></h2>

        <div class="portfolio-container">

            <asp:Repeater ID="PortfolioRepeater" runat="server">
                <ItemTemplate>
                    <div class="portfolio-box">
                        <img src='images/<%# Eval("img") %>' alt=""/>
                        <div class="portfolio-layer">
                            <h4><%# Eval("title") %></h4>
                            <p><%# Eval("description") %></p>
                            <a href='<%# Eval("link") %>' target="_blank"><i class='bx bx-link-external'></i></a>
                        </div> 
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <!--<div class="portfolio-box">
                <img src="images/portfolio1.png" alt=""/>
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div> 
            </div>

            <div class="portfolio-box">
                <img src="images/portfolio2.png" alt=""/>
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>

            <div class="portfolio-box">
                <img runat="server" src="images/portfolio3.png" id="PortfolioImg" alt=""/>
                <div class="portfolio-layer">
                    <h4 runat="server" id="PortfolioHeader">Car Rental</h4>
                    <p runat="server" id="PortfolioDesc">This is an Android application which provides users to rent cars on the fly</p>
                    <a runat="server" href="#" id="PortfolioLink" target="_blank"><i class='bx bx-link-external'></i></a>
                </div>
            </div>

            <div class="portfolio-box">
                <img src="images/portfolio4.png" alt=""/>
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>

            <div class="portfolio-box">
                <img src="images/portfolio5.png" alt=""/>
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>

            <div class="portfolio-box">
                <img src="images/portfolio6.png" alt=""/>
                <div class="portfolio-layer">
                    <h4>Car Rental</h4>
                    <p>This is an Android application which provides users to rent cars on the fly</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div> -->
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
            <asp:Button runat="server" ID="SubmitButton" Text="Send Message" CssClass="btn" OnClick="SubmitButton_Click" />
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
