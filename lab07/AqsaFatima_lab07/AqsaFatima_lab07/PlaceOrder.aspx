<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlaceOrder.aspx.vb" Inherits="AqsaFatima_lab07.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Place Order</title>
   <style type="text/css">
		html,
body {
    margin: 0;
    padding: 0;
    background-color: purple;
    color: #fff;
}

main {
    display: block;
    margin: 0 auto;
    max-width: 40rem;
    padding: 1rem;
}


.bordereffect {
    color: #fff;
    background-color: #6A5ACD;
    height: 35px;
    width: 150px;
    padding: 3px;
    margin-right: 50px;
    border: solid 2px #fff;
    font-size: 14px;
    font-weight: lighter;
    font-family: Consolas;
    -moz-border-radius: 0px 0px 0px 0px;
    border-radius: 0px 0px 0px 0px;
}

.bordereffect:hover {
    color: #6A5ACD;
    background-color: #fff;
    border: solid 2px #6A5ACD;
    cursor: pointer;
}

.bordereffect:focus {
}

.borderbottom {
    color: #fff;
    background-color: transparent;
    height: 35px;
    width: 150px;
    padding: 3px;
    border: solid 0px #fff;
    border-bottom: solid 2px #fff;
    font-size: 14px;
    font-weight: lighter;
    -moz-border-radius: 0px 0px 0px 0px;
    border-radius: 0px 0px 0px 0px;
}

.borderbottom:hover {
    color: #6A5ACD;
    border: solid 0px #6A5ACD;
    border-bottom: solid 2px #6A5ACD;
    border-top: solid 2px #6A5ACD;
}

.bordereffect {
    color: #fff;
    background-color: #6A5ACD;
    height: 35px;
    width: 150px;
    padding: 3px;
    border: solid 2px #fff;
    font-size: 14px;
    font-weight: lighter;
    font-family: Consolas;
    -moz-border-radius: 0px 0px 0px 0px;
    border-radius: 0px 0px 0px 0px;
}

.bordereffect:hover {
    color: #6A5ACD;
    background-color: #fff;
    border: solid 2px #6A5ACD;
    cursor: pointer;
}

.bordereffect:focus {
}

	</style>
</head>
<body>
    <form id="form1" runat="server">
		
	<main>
    <div>
		<h1 style="text-align:center; color:white">Place an Order</h1>
		<br />
		<div style="background-color: #ffdbf6; height: 300px; width: 601px; padding-left: 50px;padding-right:50px; border-radius:10px">
			<br />
			<br />
			<asp:Label id="Label1" runat="server" Width="180px" Height="19px" Forecolor="Black">Select Product:</asp:Label>
			<asp:DropDownList id="lstProduct" runat="server" Width="187px" Height="21px" AutoPostBack="True">

			</asp:DropDownList>&nbsp;&nbsp;&nbsp;
			
			<br />
            <br />
            <asp:Label id="Label5" runat="server" Width="180px" Forecolor="Black">Enter Quantity:</asp:Label>
			<asp:TextBox id="txtquantity" runat="server" Width="183px"></asp:TextBox><br />
			<br />
			<asp:Button Text="Place Order" ID="cmdPlaceOrder" CssClass="bordereffect" Width="150px" Height="30px" runat="server" />
		<!--
			<asp:Button Text="Generate Invoice" ID="cmdInvoice" CssClass="bordereffect" Width="150px" Height="30px" runat="server" />
			-->	
            
            <br />
			<br />
			<asp:Label id="lblResults" runat="server" Width="575px" Height="121px" Font-Bold="True"></asp:Label>
			<br />
			
		    
		</div>
    </div>
	</main>
    </form>
</body>
</html>