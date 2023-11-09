<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="WebApplication1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-color: #5e2a86;
        }
        
        .container {
            background-color: #ffffff;
            box-shadow: 0 0 11px rgb(255 255 255);
            width: 80%;
            margin: auto;
            padding: 20px;
            text-align: center;
            margin-top:100px;
        }
        
        #lblData {
            color: #5e2a86;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        
        #btnUpdateData {
            background-color: #5e2a86;
            border: none;
            color: #ffffff;
            font-size: 18px;
            font-weight: bold;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 30px;
        }
        
        #btnUpdateData:hover {
            background-color: #4a2464;
        }
    </style>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <asp:Label ID="lblData" runat="server"></asp:Label><br />
            <asp:Button ID="btnUpdateData" runat="server" Text="Update Data" OnClick="btnUpdateData_Click" />
        </form>
    </div>
</body>
</html>
