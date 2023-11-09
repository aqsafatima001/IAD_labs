Imports System.Data.SqlClient

Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Login() Handles BtnLogin.Click

        Dim username As String
        username = TBusername.Text.ToString


        Dim password As String
        password = TBpassword.Text.ToString


        Dim myConnection As New SqlConnection
        myConnection.ConnectionString = "Server=tcp:pvfcdbserver.database.windows.net,1433;Initial Catalog=pvfc_db;Persist Security Info=False;User ID=pvfc;Password=Pine@123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"

        Dim sqlCommand As New SqlCommand
        sqlCommand.Connection = myConnection

        sqlCommand.CommandText = "Select * from customer_t where customer_name = '"
        sqlCommand.CommandText &= username & "' and password = '" & password & "'"
        Dim label As New Label

        Try
            myConnection.Open()
            Dim dr As SqlDataReader
            dr = sqlCommand.ExecuteReader()
            Dim val As Boolean

            val = dr.Read()

            If val = True Then
                Dim employee As Boolean



                employee = CType(dr("isEmployee"), String)

                label.Text = "Login Successfull" & employee

                Dim customer_id As Decimal
                customer_id = dr("customer_id")
                Session("customer_id") = customer_id
                Session("isEmployee") = employee

                Response.Redirect("PlaceOrder.aspx")

            Else
                label.Text = "Login Failed"
                Response.Redirect("PlaceOrder.aspx")
            End If


            myConnection.Close()







            form1.Controls.Add(label)

        Catch ex As Exception



        End Try





    End Sub

End Class