<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="labs._default9" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Author Titles</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: lightpink;
        }
        h1{
            text-align:center;
        }
        .list{
             text-align:center;
        }

    </style>
</head>
<body>
    <h1>Author Titles</h1>
    <div id="authorListContainer">
        <asp:Label ID="lblList" Class="list" runat="server" />
    </div>
</body>
</html>

