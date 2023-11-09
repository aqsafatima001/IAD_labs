<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="lab14_aqsafatima._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <h1>Author Titles</h1>
    <div id="authorListContainer">
        <asp:ListBox ID="lstAuthors" runat="server" CssClass="list" AutoPostBack="true" OnSelectedIndexChanged="lstAuthors_SelectedIndexChanged"></asp:ListBox>
    </div>

    <div id="authorDetailsContainer" style="display:none">
        <h2>Author Details</h2>
        <asp:TextBox ID="txtAuthorId" runat="server" placeholder="Author ID" ReadOnly="true" CssClass="textbox"></asp:TextBox>
        <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" CssClass="textbox"></asp:TextBox>
        <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name" CssClass="textbox"></asp:TextBox>
        <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone No" CssClass="textbox"></asp:TextBox>
        <asp:TextBox ID="txtAddress" runat="server" placeholder="Address" CssClass="textbox"></asp:TextBox>
        <asp:TextBox ID="txtCity" runat="server" placeholder="City" CssClass="textbox"></asp:TextBox>
        <asp:TextBox ID="txtState" runat="server" placeholder="State" CssClass="textbox"></asp:TextBox>
        <asp:TextBox ID="txtZipCode" runat="server" placeholder="Zip Code" CssClass="textbox"></asp:TextBox>
       
        
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="action-button" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="action-button" />
        <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="action-button" />
        <asp:Button ID="btnInsert" runat="server" Text="Insert New" OnClick="btnInsert_Click" CssClass="action-button" />
    </div>
</body>

</html>
