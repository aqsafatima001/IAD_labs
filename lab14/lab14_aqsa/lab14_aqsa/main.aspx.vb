Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class main
    Inherits System.Web.UI.Page
    Dim dsPubs As New DataSet()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        'Using myConnection As New SqlConnection("Data Source=LAPTOP-G5TDHLRV\SQL_IAD;Initial Catalog=Pubs;Integrated Security=True")
        'Using myConnection As New SqlConnection("Data Source=DESKTOP-JKTHDU1\SQLEXPRESS;Initial Catalog=PVFC;User ID=pvfc;Password=pvfc;Trusted_Connection=True")
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
        Dim myConnection As New SqlConnection(connectionString)
        Dim selectSQL As String = "SELECT au_lname, au_fname, au_id FROM Authors"
            Dim cmd As New SqlCommand(selectSQL, myConnection)
            Dim adapter As New SqlDataAdapter(cmd)

            Try
                adapter.Fill(dsPubs, "authors")

                cmd.CommandText = "SELECT au_id, title_id FROM TitleAuthor"
                adapter.Fill(dsPubs, "TitleAuthor")

                cmd.CommandText = "SELECT title_id, title FROM Titles"
                adapter.Fill(dsPubs, "Titles")

                Dim Titles_TitleAuthor As New DataRelation("Titles_TitleAuthor",
                            dsPubs.Tables("Titles").Columns("title_id"),
                            dsPubs.Tables("TitleAuthor").Columns("title_id"))

                Dim Authors_TitleAuthor As New DataRelation("Authors_TitleAuthor",
                            dsPubs.Tables("Authors").Columns("au_id"),
                            dsPubs.Tables("TitleAuthor").Columns("au_id"))

                dsPubs.Relations.Add(Titles_TitleAuthor)
                dsPubs.Relations.Add(Authors_TitleAuthor)
                If (IsPostBack = False) Then
                    For Each rowAuthor As DataRow In dsPubs.Tables("Authors").Rows
                        AuthorDList.Items.Add(rowAuthor("au_lname") + "," + rowAuthor("au_fname"))
                    Next
                End If
            Catch err As Exception
                ErrorMessageLabel.Text = "An error occurred while loading authors: " & err.Message

            End Try
        ' End Using

    End Sub


    Protected Sub UpdateBtn_Click(sender As Object, e As EventArgs) Handles UpdateBtn.Click
        For Each rowAuthor As DataRow In dsPubs.Tables("Authors").Rows
            If AuthorDList.SelectedItem = (rowAuthor("au_lname") + "," + rowAuthor("au_fname")) Then
                rowAuthor("au_lname") = TextLN.Value
                rowAuthor("au_fname") = TextFN.Value
                rowAuthor("au_id") = TextID.Value
            End If
        Next
        dsPubs.AcceptChanges()
    End Sub

    Protected Sub DelBtn_Click(sender As Object, e As EventArgs) Handles DelBtn.Click

        For Each rowAuthor As DataRow In dsPubs.Tables("Authors").Rows
            If AuthorDList.SelectedItem = (rowAuthor("au_lname") + "," + rowAuthor("au_fname")) Then
                rowAuthor.Delete()
            End If
        Next
        dsPubs.AcceptChanges()

    End Sub

    Protected Sub InsertBtn_Click(sender As Object, e As EventArgs) Handles InsertBtn.Click
        Dim newRow As DataRow = dsPubs.Tables("Authors").NewRow()
        newRow("au_lname") = TextLN.Value
        newRow("au_fname") = TextFN.Value
        newRow("au_id") = TextID.Value
        dsPubs.Tables("Authors").Rows.Add(newRow)
        dsPubs.AcceptChanges()
    End Sub


End Class