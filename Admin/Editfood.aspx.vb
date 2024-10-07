Imports System.Data.SqlClient
Imports System.Data
Partial Class Admin_Editfood
    Inherits System.Web.UI.Page


    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    Dim dap As New SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            cn.Open()

            Dim id As Integer = Request.QueryString(0)
            fillCategory()

            qry = "select * from food_mst where foodid=" & id
            cmd = New SqlCommand(qry, cn)
            dr = cmd.ExecuteReader()
            If dr.HasRows Then
                dr.Read()
                lblFood.Text = dr("foodname")
                txtFoodName.Text = dr("foodname")
                txtPrice.Text = dr("foodprice")
                txtfooddesc.Text = dr("fooddesc")
                ViewState("picname") = dr("foodimg")
            End If
            cn.Close()
        End If
    End Sub


    Sub fillCategory()
        qry = "select * from tbl_foodcategory"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        dap = New SqlDataAdapter(cmd)
        dap.Fill(ds)
        drpCategory.DataSource = ds.Tables(0)
        drpCategory.DataTextField = ds.Tables(0).Columns("catname").ToString()
        drpCategory.DataValueField = ds.Tables(0).Columns("catid").ToString()
        drpCategory.DataBind()
    End Sub

    Protected Sub btnUpdatefood_Click(sender As Object, e As EventArgs) Handles btnUpdatefood.Click
        Dim id As Integer = Request.QueryString(0)
        Dim fname As String
        If foodImgUpload.HasFile Then
            ViewState("picname") = foodImgUpload.FileName
            fname = foodImgUpload.FileName
            foodImgUpload.SaveAs(Server.MapPath("~/Admin/Img_Upload/" & fname))
        End If
        cn.Open()
        qry = "update food_mst set foodimg='" & ViewState("picname") & "',foodname='" & txtFoodName.Text & "',fooddesc='" & txtfooddesc.Text & "',catname='" & drpCategory.SelectedItem.ToString() & "',foodprice=" & txtPrice.Text & " where foodid=" & id
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("DisplayFood.aspx")
        
    End Sub
End Class

