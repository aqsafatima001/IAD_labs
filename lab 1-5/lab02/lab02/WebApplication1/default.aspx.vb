Public Class _default
    Inherits System.Web.UI.Page


    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Init
        ' Set initial properties for the page
        lblData.Text = "Initial data"
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ' Load data from database and bind to controls
        lblData.Text = GetDataFromDatabase()
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreRender
        ' Do some final processing before the page is rendered
        lblData.Text += " - Final data"
    End Sub

    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Unload
        ' Do some cleanup work and release resources
        ' This event is not commonly used for page-level processing
    End Sub

    Protected Sub btnUpdateData_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnUpdateData.Click
        ' Handle button click event
        UpdateDataInDatabase()
    End Sub

    Private Function GetDataFromDatabase() As String
        ' Code to retrieve data from a database
        Return "Data from database"
    End Function

    Private Sub UpdateDataInDatabase()
        ' Code to update data in a database
        lblData.Text = "Data updated"
    End Sub

End Class