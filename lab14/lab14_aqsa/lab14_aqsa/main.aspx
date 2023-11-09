<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="main.aspx.vb" Inherits="lab14_aqsa.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        body{
            color:white;
        }
        .button{
        width: 100px;
    height: 25px;
    border-radius: 10px;
    background-color: #ecb0ec;

        }
        .label{
            /*margin-left: 50px;*/
            display:block;
            color:black;
        }
        .InputLabel{
        }
        #topdiv{
                background-color: purple;
    height: 84px;
    padding-top: 34px;
    padding-left: 20px;
        }
    </style>
<body>
    <form id="form1" runat="server">
        <div id="topdiv">
        <asp:Label ID="Label" runat="server" Text="Select Authors:"></asp:Label>
        <asp:DropDownList ID="AuthorDList" runat="server"></asp:DropDownList>
             <asp:Label ID="ErrorMessageLabel" runat="server" Text="" ForeColor="Red"></asp:Label>

        <asp:Button ID="UpdateBtn" runat="server" CssClass="button" Text="Update" />
        <asp:Button ID="DelBtn" runat="server" CssClass="button" Text="Delete" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Or:"></asp:Label>
        <asp:Button ID="InsertBtn" runat="server" CssClass="button" Text="Insert New" />
        </div>
        <div style="background-color: #ffd4ff">
            <br /><br />
            
            <asp:Label ID="Label2" CssClass="label" runat="server" Text="Unique ID:"></asp:Label> <input class="InputLabel" id="TextID" type="text" runat="server" required="required" />
            <asp:Label ID="Label3" runat="server" Text="(required ###-##-#### form)"></asp:Label><br /><br />
            <asp:Label ID="Label4" CssClass="label" runat="server" Text="Full Name"></asp:Label> <input class="InputLabel" id="TextFN" runat="server" type="text" /><br /><br />
            <asp:Label ID="Label5" CssClass="label" runat="server" Text="Last Name:"></asp:Label> <input class="InputLabel" id="TextLN" runat="server" type="text" /><br /><br />
            <asp:Label ID="Label6" CssClass="label" runat="server" Text="Phone "></asp:Label> <input class="InputLabel" id="TextPh" runat="server" type="text" /><br /><br />
            <asp:Label ID="Label7" CssClass="label" runat="server" Text="Address"></asp:Label> <input class="InputLabel" id="TextAD" runat="server" type="text" /><br /><br />
            <asp:Label ID="Label8" CssClass="label" runat="server" Text="City"></asp:Label> <input class="InputLabel" id="TextC" runat="server" type="text" /><br /><br />
            <asp:Label ID="Label9" CssClass="label" runat="server" Text="State:"></asp:Label> <input class="InputLabel" id="TextS" runat="server" type="text" /><br /><br />
            <asp:Label ID="Label10" CssClass="label" runat="server" Text="Zip Code"></asp:Label> <input class="InputLabel" id="TextZC" runat="server" type="text" required="required"/><asp:Label ID="Label12" runat="server" Text="(required Any 5 digits)"></asp:Label><br /><br />
            <asp:Label ID="Label11" runat="server" Text="Contract"></asp:Label> <asp:CheckBox ID="Contract" runat="server" />
            </div>
    </form>
</body>
</html>