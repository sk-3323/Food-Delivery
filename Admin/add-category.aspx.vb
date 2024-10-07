Imports System.Data.SqlClient

Partial Class Admin_add_category
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String

    Protected Sub btnAddcategory_Click(sender As Object, e As EventArgs) Handles btnAddcategory.Click
        cn.Open()
        If catPic.HasFile Then
            Dim fnmae As String = catPic.FileName
            catPic.SaveAs(Server.MapPath("~/Admin/Img_Upload/" & fnmae))
            qry = "insert into tbl_foodcategory(catname,cattype,catimg) values('" & txtCategoryName.Text & "','" & drpCategory.SelectedItem.ToString() & "','" & fnmae & "')"
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
            Response.Redirect("add-product.aspx")
        End If
        cn.Close()
    End Sub

End Class
