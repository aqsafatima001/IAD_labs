<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="info.aspx.vb" Inherits="labs.info5" %>

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
                    <p style="font-weight:600;">Problem 1:</p>
                    <p>Develop a page that allows user to search products. The user enters a partial or complete product description and click search. The data about all matching products is displayed.</p>
                    <p style="font-weight:600;">Problem 2:</p>
                    <p>Develop a page that allows user to search customers. The user enters a customer title to search. The data about all matching customers is displayed.</p>
                    <p style="font-weight:600;">Problem 3:</p>
                    <p>Develop and integrate a recommendation system with both of above pages. The output of the recommendation system is displayed at the bottom of both pages. Display the product title of the product which has maximum number of existing orders. </p>
            </p>
            
            <asp:Button ID="linkButton" runat="server" Text="Download Lab Report" OnClick="linkButton_Click" CssClass="custom-button" />
            <asp:Button ID="nextButton" runat="server" Text="LAB Demonstration" OnClick="nextButton_Click" CssClass="custom-button" />
            
            <h1>OUTPUT SCREENSHOTS:</h1>
            <div class="screenshot">
                <div><img src="lab06.1.PNG" /></div>
                <div><img src="lab06.2.PNG" /></div>
                <div><img src="lab06.3.PNG" /></div>
            </div>

        </div>
    </form>
</body>
</html>
