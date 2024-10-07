Imports System.Data.SqlClient
Partial Class Admin_ProfileUpdate
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim qry As String
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            cn.Open()
            qry = "select * from tbl_user_mst where Username='" & Session("uname") & "'"
            cmd = New SqlCommand(qry, cn)
            dr = cmd.ExecuteReader()
            If dr.HasRows Then
                dr.Read()
                txtUsername.Text = dr("Username")
                txtMobile.Text = dr("Mobile")
            End If
            Response.Write(Session("uname"))
            cn.Close()

        End If
    End Sub

    Protected Sub btnupdateProfile_Click(sender As Object, e As EventArgs) Handles btnupdateProfile.Click
        If avatarUpload.HasFile Then
            Dim avatar As String
            avatar = avatarUpload.FileName
            avatarUpload.SaveAs(Server.MapPath("~/Admin/Avatar/" & avatar))
            cn.Open()
            qry = "update tbl_user_mst set Username='" & txtUsername.Text & "', Mobile=" & txtMobile.Text & ", Avatar='" & avatar & "' where Username='" & Session("uname") & "'"
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
            cn.Close()
            Session("uname") = txtUsername.Text
            Response.Redirect("users-profile.aspx")
        Else
            lblMesg.Text = "Please Select Profile Image"
        End If
    End Sub
End Class
