Imports System.Data.SqlClient

Partial Class Admin_users_profile
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim qry As String
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        qry = "select * from tbl_user_mst where Username='" & Session("uname").ToString() & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader()
        If dr.HasRows Then
            dr.Read()
            lblUser.Text = dr("Username")
            lblFullname.Text = dr("Username")
            lblEmail.Text = dr("Email")
            lblMob.Text = dr("Mobile")
            profileimg.ImageUrl = "~/Admin/Avatar/" & dr("Avatar")
        End If
        cn.Close()
    End Sub

End Class
