Imports System.Data.SqlClient
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim qry As String
    
    Protected Sub btnLogout_Click(sender As Object, e As EventArgs) Handles btnLogout.Click
        FormsAuthentication.SignOut()
        Response.Redirect("../Login.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", New ScriptResourceDefinition() With {
             .Path = "~/Scripts/jquery-3.6.0.min.js",
             .DebugPath = "~/Scripts/jquery-3.6.0.js",
             .CdnPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js",
             .CdnDebugPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.js",
             .CdnSupportsSecureConnection = True,
             .LoadSuccessExpression = "window.jQuery"
         })

        If Session("uname") = "" Then
            Response.Redirect("../Login.aspx")
        Else
            cn.Open()
            qry = "select * from tbl_user_mst where Username='" & Session("uname").ToString() & "'"
            cmd = New SqlCommand(qry, cn)
            dr = cmd.ExecuteReader()
            If dr.HasRows Then
                dr.Read()
                lblUser.Text = dr("Username")
                profileimg.ImageUrl = "~/Admin/Avatar/" & dr("Avatar")
            End If
            cn.Close()
        End If

    End Sub
End Class

