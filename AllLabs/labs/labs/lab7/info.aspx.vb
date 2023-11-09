Public Class info6
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub linkButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles linkButton.Click
        ' Redirect to the specified link
        Response.Redirect("https://drive.google.com/file/d/1r-2UIdD-e5yGbJ0aanjeQ9uhNrIODwcF/view?usp=sharing")
    End Sub

    Protected Sub nextButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles nextButton.Click
        ' Redirect to the next page
        Response.Redirect("Main.aspx")
    End Sub


End Class