Imports System.Data.SqlClient

Partial Class Admin_SignupAdmin
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Try
            cn.Open()
            qry = "insert into tbl_user_mst(Username,Email,Password,Mobile,Status,Avatar) values('" & txtName.Text & "','" & txtMail.Text & "','" & txtPass.Text & "','" & txtMobile.Text & "',0,'')"
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
            cn.Close()
            Response.Redirect("Login.aspx")
        Catch ex As Exception
            Response.Write("<script>alert('An error occurred: " & ex.Message & "');</script>")
        End Try
        
    End Sub

End Class
