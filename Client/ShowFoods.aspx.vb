Imports System.Data.SqlClient
Imports System.Data
Partial Class Client_ShowFoods
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dap As New SqlDataAdapter
    Dim ds As New DataSet
    Dim qry As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            cn.Open()
            fillFoods()
        End If
    End Sub

    Sub fillFoods()
        qry = "select f.foodid,f.foodimg,f.foodname,f.foodprice,f.fooddesc,f.catname,r.name from food_mst f inner join tbl_restaurant r on f.restaurant_id=r.Id"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        dap = New SqlDataAdapter(cmd)
        dap.Fill(ds)
        allFood.DataSource = ds.Tables(0)
        allFood.DataBind()
    End Sub
End Class
