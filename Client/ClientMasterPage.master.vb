Imports System.Data.SqlClient
Imports System.Data

Partial Class Client_ClientMasterPage
    Inherits System.Web.UI.MasterPage

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim qry As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then

            If Session("uname") = "" Then
                lblHeader.Visible = False
                profileimg.Visible = False
                lnklogin.Visible = True
                btnLogout.Visible = False
            Else
                cn.Open()
                qry = "select * from tbl_user_mst where Username='" & Session("uname").ToString() & "'"
                cmd = New SqlCommand(qry, cn)
                dr = cmd.ExecuteReader()
                If dr.HasRows Then
                    dr.Read()
                    lblUser.Text = dr("Username")
                    If IsDBNull(dr("Avatar")) Then
                        profileimg.ImageUrl = "~/Admin/Avatar/noavatar.jpg"
                    Else
                        profileimg.ImageUrl = "~/Admin/Avatar/" & dr("Avatar")
                    End If
                End If
                cn.Close()
                lnklogin.Visible = False
                btnLogout.Visible = True
            End If

        End If

    End Sub

    Protected Sub btnLogout_Click(sender As Object, e As EventArgs) Handles btnLogout.Click
        Session("uname") = ""
        lblHeader.Visible = False
        profileimg.Visible = False
        lnklogin.Visible = True
        btnLogout.Visible = False
    End Sub
End Class

