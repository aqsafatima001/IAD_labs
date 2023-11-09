Imports System.Data
Imports System.Data.Common
Imports System.Data.SqlClient
Imports System.Security.Cryptography
Imports System.Web.Configuration

Public Class page1
    Inherits System.Web.UI.Page
    Private Sub page1_Load(sender As Object, e As EventArgs) Handles Me.Load
    End Sub
    Protected Sub btnclick() Handles btn1.Click
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim myConnection As New SqlConnection(connectionString)
        Dim myCommand As New SqlCommand
        myCommand.Connection = myConnection
        myCommand.CommandText = "Select * from product_t where product_description like '%"
        myCommand.CommandText &= tb1.Text & "' or product_description like '" + tb1.Text + "%'"

        Using myConnection

            Try
                myConnection.Open()
                Dim myReader As SqlDataReader
                myReader = myCommand.ExecuteReader()
                myReader.Read()
                Dim product_desc As String = myReader("product_description")
                Dim product_id As String = myReader("product_id")
                Dim product_finish As String = myReader("product_finish")
                Dim standard_price As String = myReader("standard_price")
                myReader.Close()

                myConnection.Close()

                Dim li As New ListItem
                Dim li1 As New ListItem
                Dim li2 As New ListItem
                Dim li3 As New ListItem

                li.Text = "Product_id = " + product_id
                li1.Text = " Product_desc = " + product_desc
                li2.Text = " Product Finish = " + product_finish
                li3.Text = " Standard Price = " + standard_price

                lb1.Items.Add(li)
                lb1.Items.Add(li1)
                lb1.Items.Add(li2)
                lb1.Items.Add(li3)


            Catch ex As Exception
                lbl2.Text = "Product Not Found"
            End Try
        End Using
    End Sub
End Class
