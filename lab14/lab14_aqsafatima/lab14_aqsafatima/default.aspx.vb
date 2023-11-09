Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class _default
    Inherits System.Web.UI.Page

    Private dsPubs As New DataSet() ' Declare the dataset at the class level

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            FillAuthorList()
        End If
    End Sub

    Private Sub FillAuthorList()
        ' Define the ADO.NET objects.
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("Pubs").ConnectionString
        Dim connection As New SqlConnection(connectionString)
        Dim selectSQL As String = "SELECT au_id, au_fname, au_lname FROM Authors"
        Dim command As New SqlCommand(selectSQL, connection)
        Dim adapter As New SqlDataAdapter(command)

        Try
            ' Creating Connection with Pubs DataBase
            connection.Open()
            adapter.Fill(dsPubs, "Authors")
        Catch err As Exception
            lstAuthors.Text = "Error reading list of names. "
            lstAuthors.Text &= err.Message
            System.Diagnostics.Debug.WriteLine("Error: " & err.ToString())
        Finally
            ' Closing the Connection 
            connection.Close()
        End Try

        lstAuthors.DataSource = dsPubs.Tables("Authors")
        lstAuthors.DataTextField = "au_lname"
        lstAuthors.DataValueField = "au_id"
        lstAuthors.DataBind()
    End Sub

    Protected Sub lstAuthors_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        Dim authorId As String = lstAuthors.SelectedValue

        ' Display author details
        DisplayAuthorDetails(authorId)
    End Sub

    Private Sub DisplayAuthorDetails(ByVal authorId As String)
        Dim selectedAuthor As DataRow = GetAuthorById(authorId)

        If selectedAuthor IsNot Nothing Then
            txtAuthorId.Text = selectedAuthor("au_id").ToString()
            txtFirstName.Text = selectedAuthor("au_fname").ToString()
            txtLastName.Text = selectedAuthor("au_lname").ToString()
            ' Fill in other fields accordingly
            ' ...
            ' authorDetailsContainer.Style("display") = "block"
        Else
            'authorDetailsContainer.Style("display") = "none"
        End If
    End Sub

    Private Function GetAuthorById(ByVal authorId As String) As DataRow
        Dim selectedAuthor As DataRow = Nothing

        For Each authorRow As DataRow In dsPubs.Tables("Authors").Rows
            If authorRow("au_id").ToString() = authorId Then
                selectedAuthor = authorRow
                Exit For
            End If
        Next

        Return selectedAuthor
    End Function

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim authorId As String = txtAuthorId.Text
        Dim selectedAuthor As DataRow = GetAuthorById(authorId)

        If selectedAuthor IsNot Nothing Then
            selectedAuthor("au_fname") = txtFirstName.Text
            selectedAuthor("au_lname") = txtLastName.Text
            ' Update other fields accordingly
            ' ...

            ' Save changes to the database
            UpdateDatabase()
            ' Display updated author details
            DisplayAuthorDetails(authorId)
        End If
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim authorId As String = txtAuthorId.Text
        Dim selectedAuthor As DataRow = GetAuthorById(authorId)

        If selectedAuthor IsNot Nothing Then
            ' Remove the author row from the dataset
            dsPubs.Tables("Authors").Rows.Remove(selectedAuthor)

            ' Save changes to the database
            UpdateDatabase()

            ' Clear the form
            ClearAuthorDetails()
        End If
    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As EventArgs)
        ClearAuthorDetails()
    End Sub

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim newAuthor As DataRow = dsPubs.Tables("Authors").NewRow()

        newAuthor("au_id") = txtAuthorId.Text
        newAuthor("au_fname") = txtFirstName.Text
        newAuthor("au_lname") = txtLastName.Text
        ' Set other fields accordingly
        ' ...

        ' Add the new author row to the dataset
        dsPubs.Tables("Authors").Rows.Add(newAuthor)

        ' Save changes to the database
        UpdateDatabase()

        ' Display newly inserted author details
        DisplayAuthorDetails(txtAuthorId.Text)
    End Sub

    Private Sub ClearAuthorDetails()
        txtAuthorId.Text = String.Empty
        txtFirstName.Text = String.Empty
        txtLastName.Text = String.Empty
        ' Clear other fields accordingly
        ' ...
        'authorDetailsContainer.Style("display") = "none"
    End Sub

    Private Sub UpdateDatabase()
        ' Define the ADO.NET objects.
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("Pubs").ConnectionString
        Dim connection As New SqlConnection(connectionString)
        Dim selectSQL As String = "SELECT au_id, au_fname, au_lname FROM Authors"
        Dim command As New SqlCommand(selectSQL, connection)
        Dim adapter As New SqlDataAdapter(command)
        Dim builder As New SqlCommandBuilder(adapter)

        Try
            ' Creating Connection with Pubs DataBase
            connection.Open()

            ' Update the dataset changes to the database
            adapter.Update(dsPubs, "Authors")
        Catch err As Exception
            lstAuthors.Text = "Error updating database. "
            lstAuthors.Text &= err.Message
            System.Diagnostics.Debug.WriteLine("Error: " & err.ToString())
        Finally
            ' Closing the Connection 
            connection.Close()
        End Try
    End Sub


End Class