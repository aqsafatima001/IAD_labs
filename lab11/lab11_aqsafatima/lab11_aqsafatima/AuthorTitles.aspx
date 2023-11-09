<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AuthorTitles.aspx.vb" Inherits="lab11_aqsafatima.AuthorTitles" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Author Titles</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:lightpink;
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
