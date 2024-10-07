Imports System.Data.SqlClient
Imports System.Data
Partial Class Admin_assets_LoginAdmin
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim dap As New SqlDataAdapter
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim ds As DataSet
    Dim dr As SqlDataReader

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        cn.Open()
        qry = "select * from tbl_user_mst where Email='" & txtemail.Text & "' and Password='" & txtpass.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader()
        If dr.HasRows Then
            dr.Read()
            Dim status As Integer
            status = dr("Status")
            Session("uname") = dr("Username")
            Session.Timeout = 60
            If status = 1 Then
                Response.Redirect("/Admin/Default.aspx")
            Else
                Response.Redirect("/Client/Home.aspx")
            End If
        Else
            lblStatus.ForeColor = Drawing.Color.Red
            lblStatus.Text = "You are not registered"
        End If
        cn.Close()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
