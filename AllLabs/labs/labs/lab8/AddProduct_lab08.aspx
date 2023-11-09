<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddProduct_lab08.aspx.vb" Inherits="labs.AddProduct_lab08" %>

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
		<h1>Add product</h1>
		
		<form  id="form1" class="C_form" runat="server">

			<label class="C_label" for="product_id" runat="server">Product ID:</label>
			<asp:TextBox ID="product_id" Class="textbox" runat="server" required="true"></asp:TextBox>

			<label class="C_label" for="product_line_id" runat="server">Product Line Id:</label>
			<asp:TextBox ID="product_line_id" Class="textbox" runat="server" required="true"></asp:TextBox>
			
			<label class="C_label" for="product_description" runat="server">Product Description:</label>
			<asp:TextBox ID="product_description" Class="textbox" runat="server" required="true"></asp:TextBox>
			
			<label class="C_label" for="product_finish" runat="server">Product Finish:</label>
			<asp:TextBox ID="product_finish" Class="textbox" runat="server" required="true"></asp:TextBox>
			
			<label class="C_label" for="standard_price" runat="server">Standard Price:</label>
			<asp:TextBox ID="standard_price" Class="textbox" runat="server" required="true"></asp:TextBox>

			<asp:Button ID="ProductButton" runat="server" Text="AddProduct" OnClick="ProductButton_Click" />
			 <asp:Label runat="server" ID="Results" Text="Label"><h1></h1></asp:Label>

		</form>
	</div>
</body>
</html>
