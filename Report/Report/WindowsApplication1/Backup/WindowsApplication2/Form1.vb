Public Class Form1
    Dim CR As New CrystalReport1 ' khởi tạo 
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        CR.ParameterFields("a").CurrentValues.Clear()
        'CR.ParameterFields(0).CurrentValues.Clear() có thể thay thế "a" = index của parameter fiel = 0
        CR.ParameterFields("a").CurrentValues.AddValue(TextBox1.Text)
        Me.CrystalReportViewer1.ReportSource = CR
    End Sub

End Class
