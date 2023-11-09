<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="info.aspx.vb" Inherits="labs.info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../navbarStylesheet.css" rel="stylesheet" />
    <title></title>

    <style>
        body {
            background-color: purple;
            color: white;
        }

        .container {
            text-align: center;
            margin-top: 100px;
        }

        h1 {
            font-size: 24px;
        }

        .screenshot {
            margin-top: 30px;
        }

        .custom-button {
        background-color: white;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        text-decoration: none;
        cursor: pointer;
        border-radius: 25px;
}
    </style>
</head>
<body>
    <form runat="server">

        <div class="container">
            <h1>Problem Statement</h1>
           <p class="problem">
            <p> Write code using C/C++ which performs following tasks:</p>
            <p> a)	Prompt the user to enter number of columns?</p>
            <p> b)	Prompt the user to enter number of rows? </p>
            <p> c)	Get data cell by cell from user using a loop? </p>
            <p> d)	Generate an html page to display above data in a table?</p>
            <p> e)	Store the page in a folder on desktop.</p>
        </p>
            
            <asp:Button ID="linkButton" runat="server" Text="Download Lab Report" OnClick="linkButton_Click" CssClass="custom-button" />
            <asp:Button ID="nextButton" runat="server" Text="LAB Demonstration" OnClick="nextButton_Click" CssClass="custom-button" />
            
            <h1>OUTPUT SCREENSHOTS:</h1>
            <div class="screenshot">
                <img src="lab1.PNG" />
            </div>

        </div>
    </form>
</body>
</html>
