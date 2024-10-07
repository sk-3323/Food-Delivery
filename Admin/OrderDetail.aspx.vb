Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_OrderDetail
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Asp Project\E-Commerce\App_Data\FoodDeliveryDB.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dap As New SqlDataAdapter
    Dim ds As New DataSet
    Dim dr As SqlDataReader

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            fillOrderData()
        End If
    End Sub

    Sub fillOrderData()
        cn.Open()
        qry = "select * from tbl_order"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        dap = New SqlDataAdapter(cmd)
        dap.Fill(ds)
        orderDetail.DataSource = ds.Tables(0)
        orderDetail.DataBind()
        cn.Close()
    End Sub

    Protected Sub ddlstatus_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim ddl As DropDownList = CType(sender, DropDownList)
        Dim selectedStatus As String = ddl.SelectedValue
        Dim row As GridViewRow = CType(ddl.NamingContainer, GridViewRow)
        Dim orderId As Integer = Convert.ToInt32(orderDetail.DataKeys(row.RowIndex).Value)
        UpdateOrderStatus(orderId, selectedStatus)
    End Sub

    Private Sub UpdateOrderStatus(orderId As Integer, status As String)

    End Sub
End Class
