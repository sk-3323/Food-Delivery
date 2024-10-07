Imports System.Data.SqlClient
Imports System.Data
Partial Class Client_Home
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            cn.Open()
            If Page.IsPostBack = False Then
                fillCategory()
                fillRestaurant()
                fillPopularItems()

            End If
        End If
    End Sub

    Sub fillCategory()
        Dim cmd As New SqlCommand
        Dim qry As String
        Dim dap As New SqlDataAdapter
        Dim ds As New DataSet
        qry = "select * from tbl_foodcategory"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        dap = New SqlDataAdapter(cmd)
        dap.Fill(ds)
        allCategory.DataSource = ds.Tables(0)
        allCategory.DataBind()
    End Sub

    Sub fillRestaurant()
        Dim cmd As New SqlCommand
        Dim qry As String
        Dim dap As New SqlDataAdapter
        Dim ds As New DataSet
        qry = "select * from tbl_restaurant"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        dap = New SqlDataAdapter(cmd)
        dap.Fill(ds)
        allrestaurant.DataSource = ds.Tables(0)
        allrestaurant.DataBind()
    End Sub

    Sub fillPopularItems()
        Dim cmd As New SqlCommand
        Dim qry As String
        Dim dap As New SqlDataAdapter
        Dim ds As New DataSet
        qry = "select f.foodid,f.foodimg,f.foodname,f.foodprice,f.fooddesc,f.catname,r.name from food_mst f inner join tbl_restaurant r on f.restaurant_id=r.Id where popularity=1"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        dap = New SqlDataAdapter(cmd)
        dap.Fill(ds)
        allPopular.DataSource = ds.Tables(0)
        allPopular.DataBind()
    End Sub

End Class
