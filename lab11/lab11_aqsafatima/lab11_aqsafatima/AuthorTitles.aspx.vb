Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class AuthorTitles
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            FillAuthorList()
        End If

    End Sub

    Private Sub FillAuthorList()
        ' Define the ADO.NET objects.
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("Pubs").ConnectionString
        Dim connection As New SqlConnection(connectionString)
        Dim selectSQL As String = "SELECT au_lname, au_fname, au_id FROM Authors"
        Dim command As New SqlCommand(selectSQL, connection)
        Dim adapter As New SqlDataAdapter(command)
        Dim dsPubs As New DataSet()
        Try
            'Creating Connection with Pubs DataBase
            connection.Open()

            adapter.Fill(dsPubs, "Authors")
            command.CommandText = "SELECT au_id, title_id FROM TitleAuthor"
            adapter.Fill(dsPubs, "TitleAuthor")
            command.CommandText = "SELECT title_id, title FROM Titles"
            adapter.Fill(dsPubs, "Titles")
        Catch err As Exception
            lblList.Text = "Error reading list of names. "
            lblList.Text &= err.Message
            lblList.Text = "Error reading list of names. "
            lblList.Text &= err.Message
            System.Diagnostics.Debug.WriteLine("Error: " & err.ToString())
        Finally
            'Closing the Connection 
            connection.Close()
        End Try


        For Each table As DataTable In dsPubs.Tables
            System.Diagnostics.Debug.WriteLine("Table: " & table.TableName)
        Next

        'Creating new relationships between different tables
        Dim TITLES_TITLEAUTHOR As New DataRelation("titles_titleauthor", dsPubs.Tables("titles").Columns("title_id"),
                                                   dsPubs.Tables("titleauthor").Columns("title_id"))
        Dim AUTHORS_titleauthor As New DataRelation("authors_titleauthor", dsPubs.Tables("authors").Columns("au_id"),
                                                    dsPubs.Tables("titleauthor").Columns("au_id"))
        dsPubs.Relations.Add(TITLES_TITLEAUTHOR)
        dsPubs.Relations.Add(AUTHORS_titleauthor)
        For Each rowAuthor As DataRow In dsPubs.Tables("Authors").Rows
            lblList.Text &= "<br /><b>" & rowAuthor("au_fname")
            lblList.Text &= " " & rowAuthor("au_lname") & "</b><br />"
            For Each rowTitleAuthor As DataRow In rowAuthor.GetChildRows(AUTHORS_titleauthor)
                Dim rowTitle As DataRow
                rowTitle = rowTitleAuthor.GetParentRows(TITLES_TITLEAUTHOR)(0)
                lblList.Text &= "&nbsp;&nbsp;"
                lblList.Text &= rowTitle("title") & "<br />"
            Next
        Next
    End Sub


End Class