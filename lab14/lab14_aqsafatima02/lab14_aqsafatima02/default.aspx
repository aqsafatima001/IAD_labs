<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="lab14_aqsafatima02._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <h1>Author Titles</h1>
        <div id="authorListContainer">
            <asp:ListBox ID="lstAuthors" runat="server" CssClass="list" AutoPostBack="True" OnSelectedIndexChanged="lstAuthors_SelectedIndexChanged"></asp:ListBox>
        </div>
        <asp:Panel ID="authorDetailsContainer" runat="server" Visible="false">
            <h2>Author Details</h2>
            <table>
                <tr>
                    <td>
                        <label for="txtAuthorId">Author ID:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAuthorId" runat="server" ReadOnly="True" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="txtFirstName">First Name:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="txtLastName">Last Name:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <!-- Add other fields as needed -->
            </table>
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="action-button" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="action-button" />
            <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="action-button" />
            <asp:Button ID="btnInsert" runat="server" Text="Insert New" OnClick="btnInsert_Click" CssClass="action-button" />
        </asp:Panel>
    </form>

</body>
</html>
