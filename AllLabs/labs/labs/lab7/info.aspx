<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="info.aspx.vb" Inherits="labs.info6" %>

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
            <p>
                   <p>Consider Pine Valley Furniture Company database schema.</p>
                        <p>Develop an application for following functionalities:</p>
                        <p>1)	Develop a page that allows user to register as a new customer.</p>
                        <p>2)	Develop a page to allows user to login.</p>
                        <p>3)	Develop a page to add new products.</p>
                        <p>4)	Develop a page to place an order with corresponding order details.</p>
                        <p>5)	Create two separate roles for above functionalities.</p>
                        <p>a.	Customer role</p>
                        <p>b.	Employee role</p>
            </p>
            
            <asp:Button ID="linkButton" runat="server" Text="Download Lab Report" OnClick="linkButton_Click" CssClass="custom-button" />
            <asp:Button ID="nextButton" runat="server" Text="LAB Demonstration" OnClick="nextButton_Click" CssClass="custom-button" />
            
            <h1>OUTPUT SCREENSHOTS:</h1>
            <div class="screenshot">
                <div><img src="lab07.1.PNG" /></div>
                <div><img src="lab07.2.PNG" /></div>
                <div><img src="lab07.3.PNG" /></div>
            </div>

        </div>
    </form>
</body>
</html>
