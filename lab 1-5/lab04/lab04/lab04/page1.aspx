<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="page1.aspx.vb" Inherits="lab04.page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Table Generator</title>
    <style>
        table {
            border-collapse: collapse;
            margin: auto;
            text-align: center;
        }

        td, th {
            border: 1px solid black;
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Table Generator</h1>
            <label>Enter number of rows:</label>
            <asp:TextBox ID="txtRows" runat="server"></asp:TextBox>
            <br /><br />
            <label>Enter number of columns:</label>
            <asp:TextBox ID="txtCols" runat="server"></asp:TextBox>
            <br /><br />
            <asp:CheckBox ID="cbBorders" runat="server" Text="Add borders" />
            <br /><br />
            <asp:CheckBox ID="cbImages" runat="server" Text="Add images" />
            <br /><br />
            <asp:Button ID="btnGenerate" runat="server" Text="Generate Table" OnClick="btnGenerate_Click" />
            <br /><br />
            <asp:Label ID="lblTable" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>