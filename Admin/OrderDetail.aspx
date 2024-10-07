<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="OrderDetail.aspx.vb" Inherits="Admin_OrderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">   
         <div class="col-12 title my-4">   
             <h1 style="font-weight:bolder;">Order Page</h1>           
         </div>   
         <hr />
         </div>
        <div class="box p-3" style="border:1px solid">
            <asp:GridView ID="orderDetail" runat="server" CssClass="table table-hover" DataKeyNames="Id" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="userid" HeaderText="User Id"/>
                    <asp:BoundField DataField="restid" HeaderText="Restaurant Id"/>
                    <asp:BoundField DataField="foodid" HeaderText="Food Id"/>
                    <asp:BoundField DataField="qty" HeaderText="Quantity"/>
                    <asp:BoundField DataField="price" HeaderText="Price"/>
                    <asp:BoundField DataField="totamt" HeaderText="Total Amount"/>
                    <asp:BoundField DataField="order_date" HeaderText="Date"/>
                    <asp:BoundField DataField="del_address" HeaderText="Address"/>

                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlstatus" runat="server" CssClass="form-select" OnSelectedIndexChanged="ddlstatus_SelectedIndexChanged">
                                <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
                                <asp:ListItem Text="Processing" Value="Processing"></asp:ListItem>
                                <asp:ListItem Text="Delivered" Value="Delivered"></asp:ListItem>
                                <asp:ListItem Text="Cancelled" Value="Cancelled"></asp:ListItem>

                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="payment" HeaderText="Payment"/>

                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

