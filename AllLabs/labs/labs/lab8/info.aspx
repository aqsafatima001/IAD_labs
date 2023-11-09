<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="info.aspx.vb" Inherits="labs.info7" %>

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
            <p>Problem A) Extend the problem 4 above. During Order Placement when the customer search for a product, in addition to displaying search results, also display relevant products searched by other customers who search the same product. (Search relevancy)</p>
            
            <p>Problem B) When the customer finalize the order after selecting products, display relevant products ordered by others who have ordered products selected in this current order. (Order relevancy)</p>
            
            <asp:Button ID="linkButton" runat="server" Text="Download Lab Report" OnClick="linkButton_Click" CssClass="custom-button" />
            <asp:Button ID="nextButton" runat="server" Text="LAB Demonstration" OnClick="nextButton_Click" CssClass="custom-button" />
            
            <h1>OUTPUT SCREENSHOTS:</h1>
            <div class="screenshot">
                <div><img src="lab08.PNG" /></div>
            </div>

        </div>
    </form>
</body>
</html>
