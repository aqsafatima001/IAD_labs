<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="test.aspx.vb" Inherits="AqsaFatima_lab07.test" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
       background-color: #B8860B; /* light wood color */
  transition: background-color 0.1s ease-in-out; /* transition effect */
    }

    #div1 {
        
        margin: 20px auto;
        max-width: 800px;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    }

    #OrderDiv {
        margin-bottom: 10px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        font-size: 20px;
    }

    textarea {
        width: 100%;
    }

    input[type="text"],
    select,
    textarea {
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 34px;
        box-sizing: border-box;
    }

    input[type="submit"] {
      padding: 15px 30px;
            background-color: #444;
            color: #fff;
            border: none;
            border-radius: 0;
            cursor: pointer;
            font-size: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-top: 20px;
            transition: all 0.3s ease-in-out;
    }

    input[type="submit"]:hover {
        background-color: #fff;
            color: #444;
            border: 2px solid #444;
    }
</style>
   
</head>
<body>
    
    <form id="form1" runat="server">
        <div runat="server" id="div1">
            <div id="OrderDiv" runat="server">
                <label>Choose your Products:</label>
                <asp:ListBox runat="server" ID="DropDownList" SelectionMode="Single"></asp:ListBox>
                 <br />
                 <br />
                <label>Enter Quantity:</label>
                <asp:TextBox runat="server" ID="TBQuantity"></asp:TextBox>
                <br />
                <br />
                <asp:Button runat="server" Text="Add Product" ID="AddProductBtn"></asp:Button>
                <br />
                <br />

                <label>Products Selected:</label>
                <asp:ListBox id="ListBox"  runat="server"></asp:ListBox>
                 <br />
                 <br />
                <div runat="server" style="display:block;"> 
                     <asp:Button runat="server" Text="Submit Order" ID="BtnCart"></asp:Button>
                <asp:Button runat="server" Text="Cancel Order" ID="BtnCancel"></asp:Button>
                </div>

                <label>Relevant Products:</label>
                <asp:ListBox id="ListBox2"  runat="server"></asp:ListBox>
                
            </div>
            

        </div>

        <asp:Button runat="server" Text="Add Product to Database" ID="btnProduct"></asp:Button>
    </form>
</body>
</html>
