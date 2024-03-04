<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Portfolio.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Admin Login</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
    <link rel="stylesheet" href="css/loginstyles.css"/>

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <form action="">
                <h1>Login</h1>
                <div class="input-box">
                    <!--<input type="text" placeholder="Username" required="required">-->
                    <asp:TextBox runat="server" ID="UserName" placeholder="Username" required="required"/>
                    <i class='bx bxs-user'></i>
                </div>
                <div class="input-box">
                    <!--<input type="password" placeholder="Password" required="required">-->
                    <asp:TextBox runat="server" ID="UserPass" placeholder="Password" required="required"/>
                    <i class='bx bxs-lock-alt'></i>
                </div>

                <div class="remember-forgot">
                    <label><asp:CheckBox runat="server" ID="RememberMe"/>Remember me</label>
                    <a href="#">Forgot password?</a>
                </div>

                <!--<button type="submit" class="btn" OnClick="Loginclick()">Login</button>-->
                <asp:Button class="btn" ID="LogInBtn" runat="server" Text="Login" OnClick="LogInBtn_Click"  />

                <div class="register-link">
                    <p>Don't have an account? <a href="#">Register</a></p>
                </div>
            </form>
         </div>
    </form>
</body>
</html>
