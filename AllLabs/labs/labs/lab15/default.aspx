<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="labs._default8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
 margin-bottom: 10px;
 display: block;
 width:100%;
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
 width: 100%;
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
</head>

<body>
    <form id="form1" runat="server">
        <div class="containerr">
            <h1>Register Customer</h1>

            <label for="customer_id" runat="server">Customer ID:</label>
            <asp:TextBox ID="customer_id" CssClass="textbox" runat="server" required="true" pattern="[0-9]+"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="customer_id"
                ErrorMessage="Please enter a Customer ID." Text="*" CssClass="error-message" />

            <label for="customer_name" runat="server">Customer Name:</label>
            <asp:TextBox ID="customer_name" CssClass="textbox" runat="server" pattern="[a-zA-Z]+"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="customer_name"
                ErrorMessage="Please enter a Customer Name." Text="*" CssClass="error-message" />

            <label for="customer_address" runat="server">Customer Address:</label>
            <asp:TextBox ID="customer_address" CssClass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="customer_address"
                ErrorMessage="Please enter a Customer Address." Text="*" CssClass="error-message" />

            <label for="customer_city" runat="server">Customer City:</label>
            <asp:TextBox ID="customer_city" CssClass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="customer_city"
                ErrorMessage="Please enter a Customer City." Text="*" CssClass="error-message" />

            <label for="customer_state" runat="server">Customer State:</label>
            <asp:TextBox ID="customer_state" CssClass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="customer_state"
                ErrorMessage="Please enter a Customer State." Text="*" CssClass="error-message" />

            <label for="postal_code" runat="server">Postal Code:</label>
            <asp:TextBox ID="postal_code" CssClass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="postal_code"
                ErrorMessage="Please enter a Postal Code." Text="*" CssClass="error-message" />
                ErrorMessage="Please enter a Postal Code." Text="*" CssClass="error-message" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="postal_code"
                ErrorMessage="Please enter a valid Postal Code. Numeric values only." ValidationExpression="^\d+$"
                Text="*" CssClass="error-message" />

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"
                CssClass="error-message" />

           <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
			 <asp:Label runat="server" ID="Results" Text="Label"><h1></h1></asp:Label>
        </div>
    </form>
</body>
</html>