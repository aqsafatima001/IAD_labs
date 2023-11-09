<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EmployeeLogin_lab08.aspx.vb" Inherits="labs.EmployeeLogin_lab08" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="loginn.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Employee Login</h1>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            <p>
                <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </p>
        </div>
    </form>
</body>
    </html>

