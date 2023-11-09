<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegCus.aspx.vb" Inherits="AqsaFatima_lab07.RegCus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<style>
	.containerr {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
    width: 400px;
    margin: 0 auto;
    margin-top: 50px;
    margin-bottom:30px;
}
.C_label{
    display:inline;
}
.textbox{
    height:30px;
}
.Results {
    font-size: 10px;
    border: none;
}

h1 {
    text-align: center;
    color: purple;
}

form {
    display: flex;
    flex-direction: column;
    margin-left:35px;
}

label {
    color: purple;
    margin-top: 10px;
}

input[type="text"], input[type="email"], input[type="password"] {
    border: 1px solid black;
    border-radius: 5px;
    margin-bottom: 10px
}

.C_form{
    margin-left:30px;
}

input[type="submit"] {
    background-color: purple;
    color: #fff;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    border: 1px solid black;
}

    input[type="submit"]:hover {
        background-color: #4b0082;
    }
.Register_button {
    width: 150px;
    font-size: 20px;
    margin-left: 5px;
    margin-bottom: 24px;
    background-color: purple;
    color: white;
    font-family: 'Times New Roman', Times, serif;
    border-radius: 5px;
}
</style>

<body>
    <div class="containerr">
		<h1>Register Customer</h1>
		<form id="form1" class="C_form" runat="server">

			<label class="C_label" for="customer_id" runat="server">Customer ID:</label>
			<asp:TextBox ID="customer_id" Class="textbox" runat="server" required="true" pattern="[0-9]+"></asp:TextBox>
			
			<label class="C_label" for="customer_name" runat="server">Customer Name:</label>
			<asp:TextBox ID="customer_name" Class="textbox" runat="server"  pattern="[a-zA-Z]+"></asp:TextBox>
			
			<label class="C_label" for="customer_id" runat="server">Customer Address:</label>
			<asp:TextBox ID="customer_address" Class="textbox" runat="server" ></asp:TextBox>
			
			<label class="C_label" for="customer_city" runat="server">Customer City:</label>
			<asp:TextBox ID="customer_city" Class="textbox" runat="server" ></asp:TextBox>
			
			<label class="C_label" for="customer_state" runat="server">Customer State:</label>
			<asp:TextBox ID="customer_state" Class="textbox" runat="server" ></asp:TextBox>
			
			<label class="C_label" for="postal_code" runat="server">Postal Code:</label>
			<asp:TextBox ID="postal_code" Class="textbox" runat="server"></asp:TextBox>
	
			<asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
			 <asp:Label runat="server" ID="Results" Text="Label"><h1></h1></asp:Label>

		</form>
	</div>
</body>
</html>
