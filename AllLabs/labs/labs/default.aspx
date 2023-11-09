<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="labs._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="navbarStylesheet.css" rel="stylesheet" />
    <title>LABS Submission</title>
</head>
   <style>
       .Download{
           display:flex;
           flex-direction:column;
       }
       .Download p{
           font-size:20px;
           margin-top:80px;
       }
   </style>
<body>
    <div runat="server">
        <nav id="navbar">
        <ul>
            <li class="item"><a class="nav-link" runat="server" href="default.aspx">Home</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab1/info.aspx">Lab1</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab2/info.aspx">Lab2</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab3/info.aspx">Lab3</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab4/info.aspx">lab4</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab5/info.aspx">Lab5</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab6/info.aspx">Lab6</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab7/info.aspx">Lab7</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab8/info.aspx">Lab8</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab11/info.aspx">Lab11</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab12/info.aspx">Lab12</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab14/info.aspx">Lab14</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab15/info.aspx">Lab15</a></li>
            <li class="item"><a class="nav-link" runat="server" href="lab16/info.aspx">Lab16</a></li>

        </ul>
    </nav>
    </div>

    <div class="Download">
        <p>Click the following button to download the zip file of project</p>
        <label class="label"><a class="a-tag" href="https://drive.google.com/file/d/1Caq0JjMruzZ44uH8rz6biqxXpNvDwe1c/view?usp=share_link">Download File</a></label>
    </div>

            <div class="Top_heading containerr">
                <h1>LABS SUBMISSION</h1>

                <div class="body" runat="server">
                    <form id="form1" runat="server">
                        <div>
                            <label class="label"><a class="a-tag" href="lab1/info.aspx">LAB-1</a></label>
                            <label class="label"><a class="a-tag" href="lab2/info.aspx">LAB-2</a></label>
                            <label class="label"><a class="a-tag" href="lab3/info.aspx">LAB-3</a></label>
                            <label class="label"><a class="a-tag" href="lab4/info.aspx">LAB-4</a></label>
                            <label class="label"><a class="a-tag" href="lab5/info.aspx">LAB-5</a></label>
                            <label class="label"><a class="a-tag" href="lab6/info.aspx">LAB-6</a></label>
                            <label class="label"><a class="a-tag" href="lab7/info.aspx">LAB-7</a></label>
                            <label class="label"><a class="a-tag" href="lab8/info.aspx">LAB-8</a></label>
                            <label class="label"><a class="a-tag" href="lab11/info.aspx">LAB-11</a></label>
                            <label class="label"><a class="a-tag" href="lab12/info.aspx">LAB-12</a></label>
                            <label class="label"><a class="a-tag" href="lab14/info.aspx">LAB-14</a></label>
                            <label class="label"><a class="a-tag" href="lab15/info.aspx">LAB-15</a></label>
                            <label class="label"><a class="a-tag" href="lab16/info.aspx">LAB-16</a></label>
                           

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
