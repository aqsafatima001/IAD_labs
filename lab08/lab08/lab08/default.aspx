<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="lab08._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

 
<head runat="server">
    <title>Login Page - PVFC</title>
    <style>
        body {
            background-color: #B8860B; /* light wood color */
  transition: background-color 0.1s ease-in-out; /* transition effect */
 

            
        }
        .login-form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 500px;
            max-width: 90%;
            text-align: center;
        }
        h1 {
            font-size: 48px;
            margin-top: 0;
            margin-bottom: 20px;
            color: #444;
            text-transform: uppercase;
            letter-spacing: 4px;
        }
        label, input[type="text"], input[type="password"], input[type="submit"] {
            display: block;
            margin-bottom: 20px;
            font-size: 20px;
            width: 100%;
            padding: 15px;
            border-radius: 5px;
            border: none;
        }
        label {
            text-align: left;
            margin-bottom: 5px;
            text-transform: uppercase;
            font-weight: bold;
            color: #444;
            letter-spacing: 2px;
        }
        input[type="text"], input[type="password"] {
            background-color: #f2f2f2;
            color: #444;
            font-size: 18px;
        }
        input[type="submit"], .register-button {
            padding: 15px 30px;
            background-color: #444;
            color: #fff;
            border: none;
            border-radius: 0;
            cursor: pointer;
            font-size: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-top: 20px;
            transition: all 0.3s ease-in-out;
        }
        input[type="submit"]:hover, .register-button:hover {
            background-color: #fff;
            color: #444;
            border: 2px solid #444;
        }
        .register-button {
            background-color: transparent;
            margin-top: 0;
            font-size: 18px;
            color: #444; 
            border: 2px solid #444;
        }
        .register-button a {
            color: #444;
            text-decoration: none;
            font-weight: bold;
            letter-spacing: 2px;
            transition: all 0.3s ease-in-out;
        }
        .register-button a:hover {
            color: #fff;
            background-color: #444;
        }
    </style>
</head>
<body>
    <div class="login-form">
        <h1>Pine Valley Furniture Company</h1>
        <form id="form1" runat="server">
            <div>
                <label for="username">Username</label>
                <asp:TextBox id="TBusername" placeholder="Enter your username" required="required" runat="server"></asp:TextBox>
                <label for="password">Password</label>

                <asp:TextBox id="TBpassword" type="password" placeholder="Enter your password" required="required" runat="server"></asp:TextBox>

                <asp:Button id="BtnLogin" text="Login" runat="server"/>
                <p class="register-button">Don't have an account? <a href="Register.aspx">Register</a></p>
            </div>
        </form>
    </div>
</body>
</html>
