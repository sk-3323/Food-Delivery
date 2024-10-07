Imports System.Data.SqlClient
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then

            fillUser()
            fillRestaurant()
            fillFood()
            fillCategory()
            Label3.Text = "5 Orders Arrived"
            Label5.Text = "300500 ₹"
            username.Text = Session("uname")

        End If
    End Sub

    Sub fillUser()
        cn.Open()
        qry = "select count(*) from tbl_user_mst where status=0"
        cmd = New SqlCommand(qry, cn)
        Dim totalUser As Integer = cmd.ExecuteScalar()
        lblCountUser.Text = totalUser.ToString() + " Total Users"
        cn.Close()
    End Sub

    Sub fillRestaurant()
        cn.Open()
        qry = "select count(*) from tbl_restaurant"
        cmd = New SqlCommand(qry, cn)
        Dim totalRestaurant As Integer = cmd.ExecuteScalar()
        Label1.Text = totalRestaurant.ToString() + " Total Restaurant"
        cn.Close()
    End Sub

    Sub fillFood()
        cn.Open()
        qry = "select count(*) from food_mst"
        cmd = New SqlCommand(qry, cn)
        Dim totfood As Integer = cmd.ExecuteScalar()
        Label2.Text = totfood.ToString() + " Total Foods"
        cn.Close()
    End Sub

    Sub fillCategory()
        cn.Open()
        qry = "select count(*) from tbl_foodcategory"
        cmd = New SqlCommand(qry, cn)
        Dim totfood As Integer = cmd.ExecuteScalar()
        Label4.Text = totfood.ToString() + " Total Foods Category"
        cn.Close()
    End Sub
End Class
