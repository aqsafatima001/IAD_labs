<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="lab05._default" %>

<!DOCTYPE html>
<html>
<head>
    <title>Dynamic Controls Example</title>
    <style>
        body {
            background-color: #f5f5f5;
            font-family: Arial, Helvetica, sans-serif;
        }

        h1 {
            color: #663399;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .button {
            background-color: #663399;
            color: #ffffff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }

        .button:hover {
            background-color: #4b2e6d;
        }

        .text-area {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #cccccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Dynamic Controls Example</h1>
            <asp:PlaceHolder runat="server" ID="dynamicControls"></asp:PlaceHolder>
            <asp:TextBox runat="server" ID="textBox1" CssClass="text-area" Rows="5"></asp:TextBox>
        </div>
    </form>
</body>
</html>