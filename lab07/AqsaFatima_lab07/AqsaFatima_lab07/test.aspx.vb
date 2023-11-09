Imports System.Data.SqlClient

Public Class test
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        'Connection Strings and its Settings....'
        Dim connectionString As String
        connectionString = "Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=PVFC;User ID=LAPTOP-G5TDHLRV\Aqsa Fatima;Password=123;Trusted_Connection=True;"
        Dim sqlConnection As New SqlConnection
        sqlConnection.ConnectionString = connectionString

        Dim sqllistItem As New SqlCommand
        sqllistItem.Connection = sqlConnection
        sqllistItem.CommandText = "Select * from product_t"
        sqlConnection.Open()

        Dim dr As SqlDataReader
        dr = sqllistItem.ExecuteReader()

        While dr.Read()
            Dim listItem As New ListItem
            listItem.Text = dr("product_description")
            DropDownList.Items.Add(listItem)

        End While
        sqlConnection.Close()



        ''''''''''' ID GENERATOR ''''''''''''''''''''''
        sqlConnection.Open()
        Dim sqlIdGenerator As New SqlCommand
        Dim lastID As Decimal

        sqlIdGenerator.Connection = sqlConnection
        sqlIdGenerator.CommandText = "select order_id from order_T order by order_id desc "


        dr = sqlIdGenerator.ExecuteReader()
        dr.Read()

        lastID = dr("order_id")

        Dim id As Decimal
        id = lastID + 1
        sqlConnection.Close()
        '''''''''''''''''''''''''''''''''''''''''''''''''''




        Dim Customer_id As Decimal
        Dim Employee As Boolean

        Customer_id = CType(Session("customer_id"), Decimal)
        Employee = CType(Session("isEmployee"), Boolean)



        If Employee = True Then

            btnProduct.Enabled = True
            btnProduct.Visible = True

        Else
            btnProduct.Visible = False
            btnProduct.Enabled = False

        End If

    End Sub


    Protected Sub btnAddProductClick() Handles AddProductBtn.Click

        Dim Quantity As Decimal = TBQuantity.Text
        Dim product As String = DropDownList.SelectedValue & ":" & Quantity

        Dim listitem As New ListItem

        listitem.Text = product
        ListBox.Items.Add(listitem)





    End Sub


    Protected Sub btnCancelClick() Handles BtnCancel.Click

        Response.Redirect("CancelOrder.aspx")



    End Sub

End Class