<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homedt.aspx.cs" Inherits="Portfolio.admin.homedt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Edit</title>

    <link rel="stylesheet" href="../css/styles.css" />
    <style>
        /* Skills Section */
        #skills {
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }

        /* Skill Card */
        .skill-card {
            background: var(--second-bg-color);
            padding: 2rem;
            border-radius: 1rem;

        }

        /* Skill Name */
        .skill-card h3 {
            font-size: 2rem;
            color: var(--main-color);
        }

        /* Skill Description */
        .skill-card p {
            font-size: 1.6rem;
            color: var(--text-color);
        }
    </style>
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

        <!-- Skills Section -->
        <section id="skills" class="services-container">
            <h2 class="heading">My <span>Skills</span></h2>


            <div class="services-container">

                <div class="skill-card">
                    <!-- Skill Name -->
                    <h3>HTML</h3>
                    <!--< Eval("SkillName") %> -->
                    <!-- Skill Description -->
                    <p>This is my web skill</p>
                    <!--< Eval("SkillDescription") %> -->
                </div>

                <div class="services-box">
                    <i class='bx bx-code-alt'></i>
                    <h3>Web Development</h3>
                    <p>Hadudu</p>
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


            <div class="skill-card">
                <!-- Skill Name -->
                <h3>HTML</h3>
                <!--< Eval("SkillName") %> -->
                <!-- Skill Description -->
                <p>This is my web skill</p>
                <!--< Eval("SkillDescription") %> -->
            </div>
            <div class="skill-card">
                <!-- Skill Name -->
                <h3>HTML</h3>
                <!--< Eval("SkillName") %> -->
                <!-- Skill Description -->
                <p>This is my web skill</p>
                <!--< Eval("SkillDescription") %> -->
            </div>
            <div class="skill-card">
                <!-- Skill Name -->
                <h3>HTML</h3>
                <!--< Eval("SkillName") %> -->
                <!-- Skill Description -->
                <p>This is my web skill</p>
                <!--<#% Eval("SkillDescription") %> -->
            </div>
            <asp:Repeater ID="SkillsRepeater" runat="server">
                <ItemTemplate>
                    <!-- Skill Card -->
                    <div class="skill-card">
                        <!-- Skill Name -->
                        <h3>HTML</h3>
                        <!--< Eval("SkillName") %> -->
                        <!-- Skill Description -->
                        <p>This is my web skill</p>
                        <!--< Eval("SkillDescription") %> -->
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

    </form>
</body>
</html>
