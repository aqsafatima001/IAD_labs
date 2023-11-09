<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Main_lab08.aspx.vb" Inherits="labs.Main_lab08" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="main.css" rel="stylesheet" />
    <link href="../navbarStylesheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="Top_heading containerr">
                <h1>DATABASE APPLICATION</h1>
                <p>Select the role you want to login as:</p>

                <div class="body" runat="server">
                    <form id="form1" runat="server">
                        <div>
                            <label class="label"><a class="a-tag" href="CustomerLogin_lab08.aspx">CUSTOMER</a></label>
                            <label class="label"><a class="a-tag" href="EmployeeLogin_lab08.aspx">EMPLOYEE</a></label>
                        </div>
                    </form>
                </div>
            </div>

         <footer>
        <div class="center">
            copyright &copy; www.InternetApplicationDevelopment.com. All rights Reserved
        </div>
    </footer>
</body>
</html>

