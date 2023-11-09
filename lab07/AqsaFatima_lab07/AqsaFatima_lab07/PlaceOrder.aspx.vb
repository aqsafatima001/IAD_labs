Imports System.Collections.ObjectModel
Imports System.Data.Common
Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class PlaceOrder
    Inherits System.Web.UI.Page

    Private Sub FillProductList()
        lstProduct.Items.Clear()

        'Creating connection with Database
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim myConnection As New SqlConnection(connectionString)


        'Dim connectionString As String = "Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=PVFC;User ID=LAPTOP-G5TDHLRV\Aqsa Fatima;Password=123;Trusted_Connection=True"

        Dim selectSQL As String = "SELECT Product_Id, Product_Description FROM Product_t"

        Dim con As New SqlConnection(connectionString)
        Dim cmd As New SqlCommand(selectSQL, con)
        Dim reader As SqlDataReader

        Try
            con.Open()
            reader = cmd.ExecuteReader()
            Do While reader.Read()
                Dim newItem As New ListItem()
                newItem.Text = reader("Product_Id") & " :  " & reader("Product_Description")
                newItem.Value = reader("Product_Id").ToString()
                lstProduct.Items.Add(newItem)
            Loop
            reader.Close()

        Catch Err As Exception
            lblResults.Text = "Error reading list of names. "
            lblResults.Text &= Err.Message
        Finally
            con.Close()
        End Try
    End Sub
    Private Sub PlaceOrder_Load(sender As Object, e As EventArgs) Handles Me.Load
        cmdInvoice.Visible = False
        If Not Page.IsPostBack Then
            FillProductList()
        End If

    End Sub



    Protected Sub cmdPlaceOrder_Click(sender As Object, e As EventArgs) Handles cmdPlaceOrder.Click
        Dim item As ListItem = lstProduct.Items(lstProduct.SelectedIndex)

        Dim lastOrderId As Integer
        Dim orderQuantity As Integer = Val(txtquantity.Text)
        Dim orderedProductId As String = lstProduct.SelectedValue
        Dim dt As Date = Date.Today
        Dim custId As Integer = Session("customer_Id")

        Try
            If txtquantity.Text.Length = 0 Then
                lblResults.Style("color") = "red"
                lblResults.Text = "Kindly enter the quantity. <br/>"
                Return
            ElseIf txtquantity.Text < 0 Then
                lblResults.Style("color") = "red"
                lblResults.Text = "Kindly enter the positive quantity. <br/>"
                Return
            End If
        Catch ex As Exception
            lblResults.Style("color") = "red"
            lblResults.Text = "Kindly provide a number. <br/>"
            Return
        End Try

        'Creating connection with Database
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim connection As New SqlConnection

        'Dim myConnection As New SqlConnection(connectionString)
        'Dim connectionString As String = "Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=PVFC;User ID=LAPTOP-G5TDHLRV\Aqsa Fatima;Password=123;Trusted_Connection=True"

        Dim dataReader As SqlDataReader
        connection.ConnectionString = connectionString

        'Fetch Last order ID
        Dim command1 As New SqlCommand
        command1.Connection = connection
        command1.CommandText = "SELECT TOP 1 ORDER_ID FROM ORDER_T ORDER BY ORDER_ID DESC"
        Try
            connection.Open()
            dataReader = command1.ExecuteReader
            While dataReader.Read()
                lastOrderId = dataReader("ORDER_ID")
                lastOrderId += 1
            End While
        Catch Err As Exception
            lblResults.Style("color") = "red"
            lblResults.Text = "Error: Fetching last order ID <br/>"
            lblResults.Text &= Err.Message
        Finally
            connection.Close()
        End Try


        'Insert order in order table
        Dim command2 As New SqlCommand
        command2.Connection = connection
        command2.CommandText = "INSERT INTO ORDER_T (ORDER_ID, CUSTOMER_ID, ORDER_DATE) VALUES ('" & lastOrderId & "','" & custId & "','" & dt.ToString("yyyy'/'MM'/'dd") & "')"
        Try
            connection.Open()
            command2.ExecuteNonQuery()
            lblResults.Text = "<b><i>Your order has been placed<i/></b>"
        Catch Err As Exception
            lblResults.Style("color") = "red"
            lblResults.Text = "Error: Inserting into Order_t<br/>"
            lblResults.Text &= Err.Message
        Finally
            connection.Close()
        End Try

        'Insert order in order_line_t
        Dim command3 As New SqlCommand
        command3.Connection = connection
        command3.CommandText = "INSERT INTO ORDER_LINE_T (ORDER_ID, PRODUCT_ID, ORDERED_QUANTITY) VALUES ('" & lastOrderId & "','" & orderedProductId & "','" & orderQuantity & "')"
        Try
            connection.Open()
            command3.ExecuteNonQuery()
        Catch Err As Exception
            lblResults.Style("color") = "red"
            lblResults.Text = "Error: Inserting into Order_line_t<br/>"
            lblResults.Text &= Err.Message
        Finally
            cmdInvoice.Visible = True
            connection.Close()
        End Try

    End Sub

    Protected Sub cmdInvoice_Click(sender As Object, e As EventArgs) Handles cmdInvoice.Click
        Response.Redirect("Invoice.aspx")
    End Sub
End Class
