﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="page2.aspx.vb" Inherits="labs.page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CustomStyleSheet.css" rel="stylesheet" />
    <link href="lab6_styleSheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>
   <div runat="server">
        
    </div>
     <div class="Top_heading">
                <h1>SEARCH CUSTOMER</h1>
                <p>Enter the Customer name and the all the information of Customer will be displayed</p>
            </div>
        <div runat="server">
                <form id="form1" runat="server">
                        <div class="div1" runat="server">
                                    <h4 class="h3Class">Enter Customer Name</h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                    
                                    <asp:TextBox Class="tb1" ID="tb1" runat="server"></asp:TextBox>
                                    <asp:Button class="btn1" ID="btn1" runat="server" Text="Search"></asp:Button>
                                    <asp:ListBox ID="lb1" class="lbl1" runat="server"></asp:ListBox>
                                    <asp:Label runat="server" ID="lbl2" Text="Label"><h1></h1></asp:Label>      
                        </div>
                    <div class="div1">
                        <h1 id="Option_heading">Other Option:</h1>
                        <label class="label"><a class="a-tag" href="page1.aspx">Product</a></label>
                    </div>
                </form>
        </div>

    <footer>
        <div class="center">
            copyright &copy; www.InternetApplicationDevelopment.com. All rights Reserved
        </div>
    </footer>
</body>
</html>
