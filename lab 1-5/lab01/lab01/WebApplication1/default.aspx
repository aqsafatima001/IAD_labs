<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="WebApplication1._default" %>

<!DOCTYPE html>

<html>
<head>
    <title>Table Generator</title>
    <link rel="stylesheet" type="text/css" href="Style.css" />
</head>
<body>
        <h1 class="problem">PROBLEM STATEMENT</h1>
        <p class="problem">
            <p> Write code using C/C++ which performs following tasks:</p>
            <p> a)	Prompt the user to enter number of columns?</p>
            <p> b)	Prompt the user to enter number of rows? </p>
            <p> c)	Get data cell by cell from user using a loop? </p>
            <p> d)	Generate an html page to display above data in a table?</p>
            <p> e)	Store the page in a folder on desktop.</p>
        </p>

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
