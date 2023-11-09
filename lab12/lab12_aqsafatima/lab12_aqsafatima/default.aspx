1<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="lab12_aqsafatima._default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #ffffff; /* Change background color to white */
        font-size: 16px; /* Set default font size to 16 */
    }

    form {
        margin: 0 auto;
        width: 80%;
        padding: 20px;
        background-color: #800080; /* Change background color to purple */
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
        color: #ffffff; /* Change label color to white */
    }

    input[type="text"],
    select {
        display: block;
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        border: none;
        background-color: #f2f2f2;
        margin-bottom: 20px;
        font-size: 16px; /* Set input font size to 16 */
    }

    input[type="submit"] {
        background-color: #800080; /* Change submit button background color to purple */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px; /* Set submit button font size to 16 */
    }

    input[type="submit"]:hover {
        background-color: #660066; /* Change submit button hover background color to darker purple */
    }

    h1 {
        text-align: center;
        color: #ffffff; /* Change h1 color to white */
        font-size: 16px; /* Set h1 font size to 16 */
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Find the Product Description whose price is Selected Below: </h1>
            <asp:RadioButtonList ID="radioButtonList" runat="server"
                AutoPostBack="true">

                <asp:ListItem id="maxRadioButton"
                    runat="server">Maximum</asp:ListItem>
                <asp:ListItem id="minRadioButton"
                    runat="server">Minimum</asp:ListItem>

            </asp:RadioButtonList>
            <asp:TextBox ID="TextBox1" runat="server">
            </asp:TextBox>
            <br />
            <br />
            <h1>Find total Cost of Products(including quantity) ordered by 
 customers who live in the selected city? </h1>
            <asp:DropDownList ID="DropDownList" runat="server"
                AutoPostBack="true">
            </asp:DropDownList>
            <br />
            <asp:TextBox ID="TextBox2" runat="server">
            </asp:TextBox>
        </div>
    </form>
</body>
</html>
