<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlaceOrder2.aspx.vb" Inherits="AqsaFatima_lab07.PlaceOrder2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color: purple;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        #form1 {
            padding: 20px;
            border: 2px solid white;
            box-shadow: 5px 5px 5px rgba(0,0,0,0.5);
            background-color: rgba(255,255,255,0.5);
        }
        
        input[type="text"] {
            width: 100%;
            padding: 5px;
            border-radius: 5px;
            border: none;
            margin-bottom: 10px;
        }
        
        #btnPlaceOrder {
            background-color: white;
            color: purple;
            border-radius: 5px;
            border: none;
            padding: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblProductDescription" runat="server" Text="Product Description"></asp:Label>
            <asp:TextBox ID="txtProductDescription" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />

        </div>
    </form>
</body>
</html>
