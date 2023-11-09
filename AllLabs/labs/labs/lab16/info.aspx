<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="info.aspx.vb" Inherits="labs.info12" %>

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
           To develop a web service, and its consumer, for payment method for PVFC Company
        </p>
            
            <asp:Button ID="linkButton" runat="server" Text="Download Lab Report" OnClick="linkButton_Click" CssClass="custom-button" />
            
            <h1>OUTPUT SCREENSHOTS:</h1>
            <div class="screenshot">
                <img src="lab16.1.PNG" />
                <img src="lab16.2.PNG" />
            </div>

        </div>
    </form>
</body>
</html>