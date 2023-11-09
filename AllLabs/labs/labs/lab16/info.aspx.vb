Public Class info12
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub linkButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles linkButton.Click
        ' Redirect to the specified link
        Response.Redirect("https://drive.google.com/file/d/1cm6plWQY-H_mzvRCXGO8w9meZUw5p5OA/view?usp=sharing")
    End Sub
End Class