Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class AddProduct
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ProductButton_Click(sender As Object, e As EventArgs) Handles ProductButton.Click

        'Creating connection with Database
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim myConnection As New SqlConnection(connectionString)

        Dim insertSQL As String
        insertSQL = "INSERT INTO Product_t ("
        insertSQL &= "product_id, Product_Line_Id, product_description, "
        insertSQL &= " product_finish, Standard_Price) "
        insertSQL &= "VALUES ('"
        insertSQL &= product_id.Text & "', '"
        insertSQL &= product_line_id.Text & "', '"
        insertSQL &= product_description.Text & "', '"
        insertSQL &= product_finish.Text & "', '"
        insertSQL &= standard_price.Text & "')"

        Dim myCommand As New SqlCommand(insertSQL, myConnection)

        ' Try to open the database and execute the update.
        Dim added As Integer = 0
        Try
            myConnection.Open()
            added = myCommand.ExecuteNonQuery()
            Results.Text = added.ToString() & " records inserted."
        Catch err As Exception
            Results.Text = "Error inserting record. "
            Results.Text &= err.Message
        Finally
            myConnection.Close()
        End Try



    End Sub

End Class