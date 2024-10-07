Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_AllRestaurant
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dap As New SqlDataAdapter
    Dim ds As New DataSet
    Dim dr As SqlDataReader


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        If Page.IsPostBack = False Then
            fillRestaurantData()
        End If
        cn.Close()
    End Sub

    Sub fillRestaurantData()
        qry = "select * from tbl_restaurant"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        dap = New SqlDataAdapter(cmd)
        dap.Fill(ds)
        AllRestaurant.DataSource = ds.Tables(0)
        AllRestaurant.DataBind()
    End Sub
End Class
