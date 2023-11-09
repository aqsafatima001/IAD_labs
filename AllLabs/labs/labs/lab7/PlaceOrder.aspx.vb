Imports System.Collections.ObjectModel
Imports System.Data.Common
Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class PlaceOrder
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim Connec As New SqlConnection(connectionString)
        Dim PD_Qry As String = "select product_description from product_t"
        Dim cmd As SqlCommand = New SqlCommand(PD_Qry, Connec)
        Connec.Open()
        Dim xreader = cmd.ExecuteReader
        While xreader.Read
            P_List.Items.Add(xreader.GetString(0))
        End While
        Connec.Close()

    End Sub

    Protected Sub BtnOrder_Click(sender As Object, e As EventArgs) Handles BtnOrder.Click
        Debug.Text = "<br />"
        Dim prod As String = P_List.SelectedItem.Text
        Dim Quan As String = QuantityTxt.Text
        Order_List.Items.Add(prod)
        Order_List.Items.Add(Quan)
        Debug.Text &= prod + " with a quantity of " + Quan + " Added" + " <br >"

        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim Connec As New SqlConnection(connectionString)

        Dim Pid_Qry As String = "select product_id from product_t where product_description= '" + prod + "'"
        Dim cmd As SqlCommand = New SqlCommand(Pid_Qry, Connec)
        Connec.Open()
        Dim xreader = cmd.ExecuteReader
        Dim Pid As String
        If (xreader.Read()) Then
            Pid = CStr(xreader.GetInt32(0))
        End If
        Dim uid = Session("s1").ToString

        Dim Oid_Qry As String = "select top 1 order_id from order_t order by order_id desc"

        xreader.Close()
        xreader.Dispose()

        cmd = New SqlCommand(Oid_Qry, Connec)

        xreader = cmd.ExecuteReader

        Dim o_id As Integer

        If xreader.Read() Then
            o_id = xreader.GetInt32(0) + 1
        End If

        'additional code
        Dim myDateTime As DateTime = DateTime.Now

        'additional code

        xreader.Close()
        Dim O_Qry As String = "insert order_t(Order_id, Customer_id) values('" + CStr(o_id) + "','" + uid + "')"
        O_Qry &= " insert order_line_t(order_id,product_id, ordered_quantity) values('" + CStr(o_id) + "','" + Pid + "',' " + Quan + "')"
        cmd = New SqlCommand(O_Qry, Connec)
        Dim inserted = cmd.ExecuteNonQuery
        If (inserted > 0) Then
            Debug.Text &= " Insertion Succeded"
        Else
            Debug.Text &= " Insertion Failed"
        End If
        Connec.Close()
    End Sub

End Class
