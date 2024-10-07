Imports System.Data.SqlClient
Imports System.Data

Partial Class Client_BuyPage
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dap As New SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("uname") = "" Then
                Response.Redirect("../Login.aspx")
            Else
                Dim id As Integer = Request.QueryString(0)
                qry = "select f.foodid,f.foodimg,f.foodname,f.foodprice,f.fooddesc,f.catname,r.name from food_mst f inner join tbl_restaurant r on f.restaurant_id=r.Id where foodid=" & id
                dap = New SqlDataAdapter(qry, cn)
                dap.Fill(ds)
                foodname.Text = ds.Tables(0).Rows(0)("foodname").ToString()
                foodImg.ImageUrl = "~/Admin/Img_Upload/" & ds.Tables(0).Rows(0)("foodimg").ToString()
                price.Text = ds.Tables(0).Rows(0)("foodprice") & " ₹"
                lblprice.Text = ds.Tables(0).Rows(0)("foodprice")
                restaurant.Text = ds.Tables(0).Rows(0)("name")
                totalPrice.Text = price.Text + 30 & " ₹"
            End If
            
        End If
    End Sub
End Class
