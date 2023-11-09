<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="labs._default6" %>

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

            <div class="Top_heading containerr">
                <h1>INTERNET APPLICATION DEVELOPMENT</h1>
                <p>This page redirects us to Product and Cuutomer pages.The user enters a partial or complete product description and click search. The data about all matching products is displayed.</p>


                <div class="body" runat="server">
                    <form id="form1" runat="server">
                        <div>

                            <label class="label"><a class="a-tag" href="page2.aspx">CUSTOMER</a></label>
                            <label class="label"><a class="a-tag" href="page1.aspx">PRODUCT</a></label>

                        </div>
                    </form>
                </div>
            </div>

           
        </body>
</html>