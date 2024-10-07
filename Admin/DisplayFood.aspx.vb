Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_DisplayFood
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
            fillFoodData()
        End If
        cn.Close()
    End Sub

    Sub fillFoodData()
        qry = "select * from food_mst"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        dap = New SqlDataAdapter(cmd)
        dap.Fill(ds)
        AllFoods.DataSource = ds.Tables(0)
        AllFoods.DataBind()
    End Sub

    Protected Sub btnFoodEdit_Click(sender As Object, e As EventArgs)
        ' Implement your edit logic here
    End Sub

    Protected Sub btnFoodDelete_Click(sender As Object, e As EventArgs)
        
    End Sub

    Protected Sub AllFoods_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Dim fid As Integer = Convert.ToInt32(AllFoods.DataKeys(e.RowIndex).Values(0))
        cn.Open()
        qry = "delete from food_mst where foodid=" & fid
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("DisplayFood.aspx")
    End Sub

    Protected Sub AllFoods_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        
    End Sub


End Class
