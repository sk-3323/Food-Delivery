Imports System.Data.SqlClient
Partial Class Admin_AddRestaurant
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ddlopening.Items.Add("10 AM")
            ddlopening.Items.Add("11 AM")
            ddlopening.Items.Add("12 PM")
            ddlopening.Items.Add("1 PM")
            ddlopening.Items.Add("2 PM")
            ddlopening.Items.Add("3 PM")
            ddlopening.Items.Add("4 PM")
            ddlopening.Items.Add("5 PM")
            ddlopening.Items.Add("6 PM")
            
            ddlclosing.Items.Add("6 PM")
            ddlclosing.Items.Add("7 PM")
            ddlclosing.Items.Add("8 PM")
            ddlclosing.Items.Add("9 PM")
            ddlclosing.Items.Add("10 PM")
            ddlclosing.Items.Add("11 PM")
            ddlclosing.Items.Add("12 PM")

        End If
    End Sub

    Protected Sub btnAddRestaurant_Click(sender As Object, e As EventArgs) Handles btnAddRestaurant.Click
        If RestaurantImg.HasFile Then
            cn.Open()
            Dim fname As String = RestaurantImg.FileName
            RestaurantImg.SaveAs(Server.MapPath("~/Admin/RestaurantImg/" & fname))
            qry = "insert into tbl_restaurant values('" & txtRestaurantName.Text & "','" & txtRestaurantAddress.Text & "','" & txtPhone.Text & "','" & txtEmail.Text & "','" & ddlopening.SelectedItem.ToString() & "','" & fname & "','" & ddlclosing.SelectedItem.ToString() & "')"
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
            cn.Close()
            Response.Redirect("AllRestaurant.aspx")
        Else
            lblerr.Text = "Please Upload Restarant Pic"
        End If
    End Sub
End Class
