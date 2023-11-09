<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="labs._default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../navbarStylesheet.css" rel="stylesheet" />
    <link href="../navbarStylesheet.css" rel="stylesheet" />
    <style type="text/css">
        body {
            background-color: #5e2a86;
        }
        
        .container {
            background-color: #ffffff;
            box-shadow: 0 0 11px rgb(255 255 255);
            width: 80%;
            margin: auto;
            padding: 20px;
            text-align: center;
            margin-top:100px;
        }
        
        #lblData {
            color: #5e2a86;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        
        #btnUpdateData {
            background-color: #5e2a86;
            border: none;
            color: #ffffff;
            font-size: 18px;
            font-weight: bold;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 30px;
        }
        
        #btnUpdateData:hover {
            background-color: #4a2464;
        }
    </style>
</head>
<body>
  
    <div class="container">
        <form id="form1" runat="server">
            <asp:Label ID="lblData" runat="server"></asp:Label><br />
            <asp:Button ID="btnUpdateData" runat="server" Text="Update Data" OnClick="btnUpdateData_Click" />

             <h1>-------Story-------</h1>
            <p>
                Once upon a time, there was a developer named John who was tasked with creating a webpage using ASP.NET. He had some experience with ASP.NET, but he wanted to dive deeper into the various events that occur during ASP.NET Page processing.

John started by creating a simple ASP.NET page, which he named "EventDemo.aspx". He added some basic HTML and controls to the page and then began to explore the various events that are raised and handled during ASP.NET Page processing.

First, John added an event handler for the "Page_Init" event, which occurs after the page object has been created and initialized. In this event handler, he added some code to initialize some variables and set the values of some controls on the page.

Next, John added an event handler for the "Page_Load" event, which occurs after the page has been initialized and the ViewState has been loaded. In this event handler, he added some code to populate some data into the controls on the page based on user input.

John also added an event handler for the "Button_Click" event, which occurs when a button on the page is clicked. In this event handler, he added some code to handle the user's input and perform some calculations based on the data entered.

Finally, John added an event handler for the "Page_Unload" event, which occurs after the page has been fully rendered and sent to the client. In this event handler, he added some code to clean up any resources used by the page.

As John tested his page, he saw how these events were raised and handled during the ASP.NET Page processing cycle. He saw how the page was initialized, data was loaded and displayed, user input was handled, and resources were cleaned up.

In the end, John was able to create a robust ASP.NET page that fully utilized the various events that occur during ASP.NET Page processing. He felt confident in his abilities as an ASP.NET developer and was eager to continue exploring this powerful platform.
            </p>
        </form>
    </div>
</body>
</html>
