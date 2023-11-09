Public Class _default5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Add the dynamic controls
            AddDynamicControls()
        End If
    End Sub

    Protected Sub AddDynamicControls()
        ' Create the buttons and text area
        Dim button1 As New Button()
        button1.ID = "button1"
        button1.Text = "Button 1"
        button1.CssClass = "button"
        AddHandler button1.Click, AddressOf Button_Click

        Dim button2 As New Button()
        button2.ID = "button2"
        button2.Text = "Button 2"
        button2.CssClass = "button"
        AddHandler button2.Click, AddressOf Button_Click

        Dim textBox1 As New TextBox()
        textBox1.ID = "textBox1"
        textBox1.CssClass = "text-area"
        textBox1.Rows = 5

        ' Add the controls to the placeholder
        dynamicControls.Controls.Add(button1)
        dynamicControls.Controls.Add(button2)
        dynamicControls.Controls.Add(textBox1)
    End Sub

    Protected Sub Button_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim button As Button = CType(sender, Button)
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Button " + button.ID.Substring(button.ID.Length - 1) + " clicked.');", True)
    End Sub

End Class