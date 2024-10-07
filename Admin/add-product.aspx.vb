Imports System.Data.SqlClient
Imports System.Data
Partial Class Admin_add_product
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dap As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub btnAddfood_Click(sender As Object, e As EventArgs) Handles btnAddfood.Click
        cn.Open()
        If foodImgUpload.HasFile Then
                   Dim fname As String
                    fname = foodImgUpload.FileName
            foodImgUpload.SaveAs(Server.MapPath("~/Admin/Img_Upload/" & fname))
            qry = "insert into food_mst values('" & ddlrestaurant.SelectedValue.ToString() & "','" & fname & "','" & txtFoodName.Text & "','" & txtfooddesc.Text & "','" & drpCategory.SelectedItem.Text & "'," & txtPrice.Text & ",0)"
                    cmd = New SqlCommand(qry, cn)
                    cmd.ExecuteNonQuery()
        Else
            lblUploadError.Text = "Please Select File"
        End If
        cn.Close()
        emptyField()
        Response.Redirect("DisplayFood.aspx")
    End Sub

    Sub emptyField()
        txtfooddesc.Text = ""
        txtFoodName.Text = ""
        txtPrice.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            cn.Open()
            If Page.IsPostBack = False Then
            fillCategory()
            fillRestaurant()
            End If
            cn.Close()
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

    Sub fillRestaurant()
        Dim da As New SqlDataAdapter
        Dim dset As New DataSet
        qry = "select * from tbl_restaurant"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        da = New SqlDataAdapter(cmd)
        da.Fill(dset)
        ddlrestaurant.DataSource = dset.Tables(0)
        ddlrestaurant.DataTextField = dset.Tables(0).Columns("name").ToString()
        ddlrestaurant.DataValueField = dset.Tables(0).Columns("Id").ToString()
        ddlrestaurant.DataBind()
    End Sub

End Class
