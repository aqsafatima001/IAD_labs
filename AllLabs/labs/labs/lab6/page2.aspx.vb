Imports System.Data
Imports System.Data.Common
Imports System.Data.SqlClient
Imports System.Security.Cryptography
Imports System.Web.Configuration

Public Class page2
    Inherits System.Web.UI.Page
    Private Sub page1_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnclick() Handles btn1.Click

        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim myConnection As New SqlConnection(connectionString)

        'Dim myConnection As New SqlConnection
        'myConnection.ConnectionString = "Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=PVFC;User ID=LAPTOP-G5TDHLRV\Aqsa Fatima;Password=123;Trusted_Connection=True"

        Dim sqlCommand As New SqlCommand
        sqlCommand.Connection = myConnection


        sqlCommand.CommandText = "Select * from CUSTOMER_t where Customer_name like '%"
        sqlCommand.CommandText &= tb1.Text & " ' or Customer_name like '" + tb1.Text + "%'"


        'sqlCommand.CommandText = "Select * from CUSTOMER_t where Customer_Name like '%' "
        'sqlCommand.CommandText = "SELECT * FROM customer_t WHERE customer_name LIKE '%" & tb1.Text & "%'"




        Try
            myConnection.Open()
            Dim dr As SqlDataReader
            dr = sqlCommand.ExecuteReader()
            dr.Read()
            Dim Customer_Name As String = dr("Customer_Name")
            Dim Customer_Id As String = dr("Customer_Id")
            Dim Customer_State As String = dr("Customer_State")
            Dim Customer_City As String = dr("Customer_City")
            myConnection.Close()

            Dim li As New ListItem
            Dim li1 As New ListItem
            Dim li2 As New ListItem
            Dim li3 As New ListItem

            li.Text = "Customer_Name = " + Customer_Name
            li1.Text = "Customer_Id = " + Customer_Id
            li2.Text = "Customer_State = " + Customer_State
            li3.Text = "Customer_City = " + Customer_City



            lb1.Items.Add(li)
            lb1.Items.Add(li1)
            lb1.Items.Add(li2)
            lb1.Items.Add(li3)


        Catch ex As Exception
            lbl2.Text = "Customer Not Found"
        End Try

    End Sub


End Class