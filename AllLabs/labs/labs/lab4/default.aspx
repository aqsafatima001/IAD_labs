<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="labs._default4" %>

<!DOCTYPE html>
<html>
<head>
    <link href="../navbarStylesheet.css" rel="stylesheet" />
    <title>CheckBoxList Demo</title>
    <style>
        body {
            background-color: purple;
            color: white;
            text-align: center;
        }
        h1 {
            margin-top: 50px;
        }
        p {
            margin-bottom: 30px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>CheckBoxList Demo</h1>
        <p>Please select your preferred colors:</p>
        <asp:CheckBoxList ID="cblColors" runat="server" style="margin-left: 694px;">
            <asp:ListItem Text="Red" Value="Red" />
            <asp:ListItem Text="Blue" Value="Blue" />
            <asp:ListItem Text="Green" Value="Green" />
            <asp:ListItem Text="Yellow" Value="Yellow" />
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <hr />
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