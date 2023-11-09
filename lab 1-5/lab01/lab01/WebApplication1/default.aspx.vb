Imports System.IO

Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub


    Protected Sub generateTableButton_Click(sender As Object, e As EventArgs)
        Dim columns As Integer = Integer.Parse(Me.columns.Text)
        Dim rows As Integer = Integer.Parse(Me.rows.Text)
        Dim tableData As String = ""

        For i As Integer = 0 To rows - 1
            tableData &= "<tr>"
            For j As Integer = 0 To columns - 1
                tableData &= "<td>"
                tableData &= "<input type='text' name='cell_" & i.ToString() & "_" & j.ToString() & "' />"
                tableData &= "</td>"
            Next
            tableData &= "</tr>"
        Next

        Dim table As String = "<table>"
        table &= "<thead><tr>"
        For i As Integer = 0 To columns - 1
            table &= "<th>Header " & (i + 1).ToString() & "</th>"
        Next
        table &= "</tr></thead>"
        table &= "<tbody>" & tableData & "</tbody>"
        table &= "</table>"

        tableLiteral.Text = table
    End Sub

End Class