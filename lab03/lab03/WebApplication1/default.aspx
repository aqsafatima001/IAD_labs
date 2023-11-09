<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="WebApplication1._default" %>

<!DOCTYPE html>
<html>
<head>
    <title>Currency Converter</title>
    <style>
        body {
            background-color: #fff;
            color: #333;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            color: #6b238e;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"], select {
            font-size: 1.2rem;
            padding: 10px;
            border-radius: 5px;
            border: none;
            margin-bottom: 20px;
            box-shadow: 0 2px 2px rgba(0, 0, 0, 0.1);
        }

        input[type="text"] {
            width: 250px;
        }

        select {
            width: 200px;
        }

        input[type="submit"] {
            background-color: #6b238e;
            color: #fff;
            padding: 10px 20px;
            font-size: 1.2rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0 2px 2px rgba(0, 0, 0, 0.1);
        }

        input[type="submit"]:hover {
            background-color: #532078;
        }

        label.error {
            color: red;
            display: block;
            margin-top: 5px;
        }

        .result {
            font-size: 1.5rem;
            margin-top: 20px;
        }

        .result span {
            font-weight: bold;
            color: #6b238e;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Currency Converter</h1>
            <label>Amount in USD:</label>
            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            <br />
            <label>Convert to:</label>
            <asp:DropDownList ID="ddlCurrency" runat="server">
                <asp:ListItem Value="EUR">Euros</asp:ListItem>
                <asp:ListItem Value="CAD">Canadian Dollars</asp:ListItem>
                <asp:ListItem Value="JPY">Japanese Yen</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />
            <br />
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>