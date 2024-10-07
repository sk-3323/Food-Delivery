Imports System.Data.SqlClient
Imports System.Data

Partial Class Client_ShowCategoryWise
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry1 As String
    Dim dap As New SqlDataAdapter
    Dim ds As New DataSet
    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            cn.Open()
            If Page.IsPostBack = False Then
                fillFoodCategoryWise()
            End If
            cn.Close()
        End If
    End Sub

    Sub fillFoodCategoryWise()
        Dim name As String = Request.QueryString(0)
        qry1 = "select f.foodid,f.foodimg,f.foodname,f.foodprice,f.fooddesc,f.catname,r.name from food_mst f inner join tbl_restaurant r on f.restaurant_id=r.Id where f.catname='" & name & "'"
        cmd = New SqlCommand(qry1, cn)
        cmd.ExecuteNonQuery()
        dap = New SqlDataAdapter(cmd)
        dap.Fill(ds)
        allFood.DataSource = ds.Tables(0)
        allFood.DataBind()
        cattag.Text = name & "s"
    End Sub

End Class
