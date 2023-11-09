Imports System.Web.Services

Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnConvert_Click(sender As Object, e As EventArgs)
        Dim amount As Double = Double.Parse(txtAmount.Text)
        Dim currency As String = ddlCurrency.SelectedValue
        Dim result As String = ConvertCurrency(amount, currency)
        lblResult.Text = result
    End Sub

    Private Function ConvertCurrency(amount As Double, currency As String) As String
        Select Case currency
            Case "EUR"
                Return (amount * 0.91).ToString("F2") ' 1 USD = 0.91 EUR
            Case "CAD"
                Return (amount * 1.34).ToString("F2") ' 1 USD = 1.34  CAD
            Case "JPY"
                Return (amount * 134.09).ToString("F2") ' 1 USD =134.09SJPY
            Case Else
                Return "Invalid currency"
        End Select
    End Function


End Class