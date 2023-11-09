Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class CustomerLogin_lab08
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        'Creating connection with Database
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim myConnection As New SqlConnection(connectionString)

        Dim customer_id As String = txtUsername.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()
        Dim queryString As String = "SELECT * FROM CustomerLogin  WHERE customer_id=@customer_id AND Password=@Password"

        Dim SQlcommand As New SqlCommand(queryString, myConnection)
        SQlcommand.Parameters.AddWithValue("@customer_id", customer_id)
        SQlcommand.Parameters.AddWithValue("@Password", password)

        myConnection.Open()
        Dim reader As SqlDataReader = SQlcommand.ExecuteReader()

        If reader.HasRows Then
            Session("s1") = customer_id
            ' Login successful, redirect to home page or dashboard.
            Response.Redirect("PlaceOrder_lab08.aspx")
        Else
            ' Login failed, display error message.
            lblMessage.Visible = True
            lblMessage.Text = "Invalid customer_id or password."
        End If

        reader.Close()

    End Sub

End Class