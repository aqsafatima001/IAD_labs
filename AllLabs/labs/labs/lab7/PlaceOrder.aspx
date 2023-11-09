<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlaceOrder.aspx.vb" Inherits="labs.PlaceOrder" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<style>
    body {
  background-color: purple;
}

#form1 {
  background-color: white;
  margin: 0 auto;
  width: 50%;
  padding: 20px;
  box-sizing: border-box;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

#form1 div {
  text-align: center;
}

#form1 label {
  display: block;
  margin-bottom: 10px;
}

#form1 select,
#form1 input[type="text"],
#form1 button {
  margin-bottom: 20px;
  width: 100%;
  box-sizing: border-box;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

#form1 button {
  background-color: purple;
  color: white;
  cursor: pointer;
  transition: background-color 0.2s ease-in-out;
}

#form1 button:hover {
  background-color: #663399;
}

#Order_List {
  margin-top: 20px;
}

.BtnOrder{
        background-color: purple;
    margin: 3px;
    padding: 6px;
    width: 100px;
    height: 30px;
    /* font-size: 20px; */
    color: white;
    font-family: monospace;
    border-radius: 12px;
}
.label{
    color:black;
    font-size:20px;
    font-family:'Times New Roman';
    margin-bottom:3px;

}
</style>

<body>
    <form id="form1" runat="server" style="margin-top: 130px;">
        <div>

            <asp:Label ID="Label1" Class="label" runat="server" Text="Select Product: "></asp:Label>
            <asp:DropDownList ID="P_List" runat="server">
            </asp:DropDownList>  <br />  <br />

          

            <asp:Label ID="Label2" Class="label" runat="server" Text="Quantity:  "></asp:Label>
            <asp:TextBox ID="QuantityTxt" runat="server"></asp:TextBox> <br /> <br />
           


            <asp:Button ID="BtnOrder" Class="BtnOrder" runat="server" Text="Order" />

            </div>
        <div>

            <br /><br />
            <asp:ListBox ID="Order_List" runat="server" Height="127px" Width="231px" style="background-color: #fee4ff;
    box-shadow: 3px 3px 16px #aaaaaa;"></asp:ListBox>
            <br />
            <br />
            <asp:Label ID="Debug" runat="server" Text="Debug: "></asp:Label>
            
            </div>
    </form>
</body>
</html>
