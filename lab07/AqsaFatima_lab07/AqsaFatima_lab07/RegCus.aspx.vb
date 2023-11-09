Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class RegCus
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub RegisterButton_Click(sender As Object, e As EventArgs) Handles RegisterButton.Click

        'Creating connection with Database
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim myConnection As New SqlConnection(connectionString)

        Dim insertSQL As String
        insertSQL = "INSERT INTO customer_t ("
        insertSQL &= "Customer_Id,Customer_Name,Customer_Address, "
        insertSQL &= "Customer_City,Customer_State,Postal_Code) "
        insertSQL &= "VALUES ('"
        insertSQL &= customer_id.Text & "', '"
        insertSQL &= customer_name.Text & "', '"
        insertSQL &= customer_address.Text & "', '"
        insertSQL &= customer_city.Text & "', '"
        insertSQL &= customer_state.Text & "', '"
        insertSQL &= postal_code.Text & "')"

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