<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="info.aspx.vb" Inherits="labs.info4" %>

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
        color: black;
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
            Develop a page that dynamically adds two buttons (html type) and a text area on the interface. Write an event handler for click event of button (ServerClick) and attach with the above buttons. The click of both buttons should be managed by single dynamically attached event handler subroutine. 
        </p>
            
            <asp:Button ID="linkButton" runat="server" Text="Download Lab Report" OnClick="linkButton_Click" CssClass="custom-button" />
            <asp:Button ID="nextButton" runat="server" Text="LAB Demonstration" OnClick="nextButton_Click" CssClass="custom-button" />
            
            <h1>OUTPUT SCREENSHOTS:</h1>
            <div class="screenshot">
                <img src="lab05.PNG" />
            </div>

        </div>
    </form>
</body>
</html>

