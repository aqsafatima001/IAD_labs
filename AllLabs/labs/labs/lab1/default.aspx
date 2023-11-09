<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="labs._default1" %>

<!DOCTYPE html>

<html>
<head>
    <title>Table Generator</title>
    <link href="lab1_stylesheet.css" rel="stylesheet" />
    <link href="../navbarStylesheet.css" rel="stylesheet" />
</head>
<body>

    <form runat="server">
        <div>
            <h1 style="color:purple;">Table Generator</h1>
            <label for="columns">Number of columns:</label>
            <asp:TextBox ID="columns" runat="server" />
        </div>
        <div>
            <label for="rows">Number of rows:</label>
            <asp:TextBox ID="rows" runat="server" />
        </div>
        <asp:Button ID="generateTableButton" Class="generateTableButton" runat="server" Text="Generate Table" OnClick="generateTableButton_Click" />
        <br /><br />
        <asp:Literal ID="tableLiteral" runat="server" />
    </form>


</body>
</html>
