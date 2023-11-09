Imports System.Collections.ObjectModel
Imports System.Data.Common
Imports System.Data.SqlClient

Public Class PlaceOrder4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim Connec As SqlConnection = New SqlConnection("Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=PVFC;User ID=LAPTOP-G5TDHLRV\Aqsa Fatima;Password=123;Trusted_Connection=True")
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
        Dim Connec As SqlConnection = New SqlConnection("Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=PVFC;User ID=LAPTOP-G5TDHLRV\Aqsa Fatima;Password=123;Trusted_Connection=True")
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

        '-------------------------------------------------
        'Additional code

        Dim CustomerSearchInsertion As String = "insert into CustomerSearch_t (customer_id,product_id,order_id) values('" + uid + "','" + Pid + "','" + CStr(o_id) + "')"
        cmd = New SqlCommand(CustomerSearchInsertion, Connec)
        xreader = cmd.ExecuteReader
        xreader.Close()

        Dim RelevantProduct_q As String = "SELECT DISTINCT p.product_description " &
                                   "FROM CustomerSearch_t s1 " &
                                   "LEFT JOIN product_t p ON s1.product_id = p.product_id " &
                                   "WHERE s1.product_id = @Pid " &
                                   "  OR s1.product_id IN ( " &
                                   "    SELECT TOP 5 s2.product_id " &
                                   "    FROM CustomerSearch_t s2 " &
                                   "    WHERE s2.timestamp < s1.timestamp " &
                                   "    ORDER BY s2.timestamp DESC " &
                                   "  ) " &
                                   "ORDER BY p.product_description " &
                                   "OFFSET 0 ROWS " &
                                   "FETCH NEXT 5 ROWS ONLY"

        Dim command As New SqlCommand(RelevantProduct_q, Connec)
        command.Parameters.AddWithValue("@Pid", Pid)
        Dim Queryreader As SqlDataReader = command.ExecuteReader()

        'Retrieve the results of the query and add them to a list
        Dim products As New List(Of String)()
        While Queryreader.Read()
            products.Add(Queryreader("product_description").ToString())
        End While
        Queryreader.Close()

        'Bind the list of products to the ListBox control
        RelevantProducts_list.DataSource = products
        RelevantProducts_list.DataBind()

        'cmd = New SqlCommand(Oid_Qry, Connec)


        Connec.Close()

        '-------------------------------------------------------------------------------------------------------------------------------


    End Sub

End Class
