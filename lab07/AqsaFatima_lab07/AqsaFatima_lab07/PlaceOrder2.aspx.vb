Imports System.Data.SqlClient

Public Class PlaceOrder2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnPlaceOrder_Click(sender As Object, e As EventArgs) Handles btnPlaceOrder.Click
        ' Get the values entered by the user
        Dim productDescription As String = txtProductDescription.Text
        Dim quantity As Integer = Integer.Parse(txtQuantity.Text)

        ' Insert the new order into the database
        Dim connectionString As String = "Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=PVFC;User ID=LAPTOP-G5TDHLRV\Aqsa Fatima;Password=123;Trusted_Connection=True"

        Using connection As New SqlConnection(connectionString)
            connection.Open()

            ' Get the customer ID for the current user
            Dim customerId As Integer = GetCustomerId()

            ' Insert the order into the database
            Dim orderId As Integer
            Dim insertOrderCommandText As String = "INSERT INTO order_t (customer_id) VALUES (@customerId); SELECT SCOPE_IDENTITY();"
            Using insertOrderCommand As New SqlCommand(insertOrderCommandText, connection)
                insertOrderCommand.Parameters.AddWithValue("@customerId", customerId)
                'orderId = CInt(insertOrderCommand.ExecuteScalar())

                orderId = 1002
            End Using

            ' Get the product ID for the product description entered by the user
            Dim productId As Integer = GetProductId(productDescription)


            ' Insert the order line into the database
            Dim insertOrderLineCommandText As String = "INSERT INTO order_line_t (order_id, product_id, ordered_quantity) VALUES (@orderId, @productId, @quantity);"
            Using insertOrderLineCommand As New SqlCommand(insertOrderLineCommandText, connection)
                insertOrderLineCommand.Parameters.AddWithValue("@orderId", orderId)
                insertOrderLineCommand.Parameters.AddWithValue("@productId", productId)
                insertOrderLineCommand.Parameters.AddWithValue("@quantity", quantity)
                insertOrderLineCommand.ExecuteNonQuery()
            End Using
        End Using

        ' Display a confirmation message
        Dim message As String = "Order placed successfully!"
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('" & message & "');", True)
    End Sub

    Private Function GetCustomerId() As Integer

        Dim customerid As Integer
        customerid = 1

        Return customerid
    End Function

    Private Function GetProductId(productDescription As String) As Integer

        ' Query the database to retrieve the product ID for the given product description
        Dim connectionString As String = "Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=PVFC;User ID=LAPTOP-G5TDHLRV\Aqsa Fatima;Password=123;Trusted_Connection=True"
        Dim productId As Integer
        Using connection As New SqlConnection(connectionString)
            connection.Open()

            Dim selectCommandText As String = "SELECT product_id FROM product_t WHERE product_description = @description;"
            Using selectCommand As New SqlCommand(selectCommandText, connection)
                selectCommand.Parameters.AddWithValue("@description", productDescription)
                productId = CInt(selectCommand.ExecuteScalar())
            End Using
        End Using

        Return productId
    End Function

End Class