Imports System.Collections.ObjectModel
Imports System.Data.Common
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class _default7
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            'Dim SqlConnection As New SqlConnection
            'SqlConnection.ConnectionString = "Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=PVFC;User ID=LAPTOP-G5TDHLRV\Aqsa Fatima;Password=123;Trusted_Connection=True"

            Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
            Dim Connec As New SqlConnection(connectionString)
            Dim query As String = "select distinct Customer_city from customer_t where customer_city is not null;"
            Dim sqllistItem As SqlCommand = New SqlCommand(query, Connec)

            Connec.Open()
            Dim dr As SqlDataReader
            dr = sqllistItem.ExecuteReader()
            While dr.Read()
                Dim listItem As New ListItem
                listItem.Text = dr("Customer_city")
                DropDownList.Items.Add(listItem)
            End While
            Connec.Close()
        End If
        DropDownList.Style.Add("font-size", "40px")


    End Sub


    Protected Sub radioButon() Handles radioButtonList.SelectedIndexChanged

        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim Connecection As New SqlConnection(connectionString)

        Dim query1 As String = "select product_description from product_t where standard_price =(select max(standard_price) from PRODUCT_t);"
        Dim maxPriceSql As SqlCommand = New SqlCommand(query1, Connecection)

        Dim query2 As String = "select product_description from product_t where standard_price =(select min(standard_price) from PRODUCT_t);"
        Dim minPriceSql As SqlCommand = New SqlCommand(query1, Connecection)

        Dim flagMax As String
        flagMax = radioButtonList.SelectedValue.ToString
        If flagMax = "Maximum" Then
            Connecection.Open()
            Dim dr As SqlDataReader
            dr = maxPriceSql.ExecuteReader()
            dr.Read()
            TextBox1.Text = dr("product_description")
            Connecection.Close()
        ElseIf flagMax = "Minimum" Then
            Connecection.Open()
            Dim dr As SqlDataReader
            dr = minPriceSql.ExecuteReader()
            dr.Read()
            TextBox1.Text = dr("product_description")
            Connecection.Close()
        Else
            TextBox1.Text = ""
        End If
        TextBox1.Style.Add("font-size", "40px")
    End Sub
    Protected Sub dropDown() Handles DropDownList.SelectedIndexChanged
        Dim city As String
        city = DropDownList.SelectedValue.ToString

        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim Connecection As New SqlConnection(connectionString)

        Dim query3 As String = "select sum(tt) as TotalCost from (select (Ordered_Quantity*Standard_Price) as tt from customer_t,order_t ,order_line_t,product_t where customer_t.Customer_Id = ORDER_t.customer_id and order_t.order_Id = ORDER_line_t.order_id and order_line_t.product_Id = product_t.product_id and Customer_City = '" & city & "' )as tt; "
        Dim prodCostSql As SqlCommand = New SqlCommand(query3, Connecection)

        Connecection.Open()
        Dim dr As SqlDataReader
        dr = prodCostSql.ExecuteReader()
        dr.Read()
        Dim str As String
        str = dr("TotalCost").ToString
        If str = "" Then
            TextBox2.Text = "No Orders"
        Else
            TextBox2.Text = str
        End If
        TextBox2.Style.Add("font-size", "40px")
        Connecection.Close()
    End Sub

End Class