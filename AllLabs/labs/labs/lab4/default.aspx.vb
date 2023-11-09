Public Class _default4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Dim selectedColors As New List(Of String)
        For Each item As ListItem In cblColors.Items
            If item.Selected Then
                selectedColors.Add(item.Text)
            End If
        Next
        lblResult.Text = "You have selected: " & String.Join(", ", selectedColors)
    End Sub

    Protected Sub btnGenerate_Click(sender As Object, e As EventArgs) Handles btnGenerate.Click
        ' Get number of rows and columns from textboxes
        Dim rows As Integer = Integer.Parse(txtRows.Text)
        Dim cols As Integer = Integer.Parse(txtCols.Text)

        ' Create table and table header
        Dim table As New Table()
        table.BorderWidth = 0
        table.CellPadding = 0
        table.CellSpacing = 0
        Dim headerRow As New TableHeaderRow()

        For j As Integer = 1 To cols
            ' Create table header cell and add to header row
            Dim headerCell As New TableHeaderCell()
            headerCell.Text = "Column " & j
            headerRow.Cells.Add(headerCell)
        Next

        ' Add header row to table
        table.Rows.Add(headerRow)

        ' Create table rows and cells
        For i As Integer = 1 To rows
            ' Create table row
            Dim row As New TableRow()

            For j As Integer = 1 To cols
                ' Create table cell and add to table row
                Dim cell As New TableCell()
                cell.Text = i & "," & j

                ' Add borders if checkbox is checked
                If cbBorders.Checked Then
                    cell.BorderStyle = BorderStyle.Solid
                    cell.BorderWidth = 1
                End If

                ' Add image if checkbox is checked
                If cbImages.Checked Then
                    'Dim img As New Image()
                    'img.ImageUrl = "https://via.placeholder.com/50"
                    'cell.Controls.Add(img)
                End If

                row.Cells.Add(cell)
            Next

            ' Add table row to table
            table.Rows.Add(row)
        Next

        ' Add table to label
        lblTable.Controls.Add(table)
    End Sub

End Class