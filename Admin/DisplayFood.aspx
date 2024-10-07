<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="DisplayFood.aspx.vb" Inherits="Admin_DisplayFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 title my-4">
                <h1 style="font-weight:bolder;">All Foods</h1>
            </div>
            <hr />
         </div>
            <div class="row">
            <asp:GridView ID="AllFoods" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" DataKeyNames="foodid" OnRowDeleting="AllFoods_RowDeleting" OnRowDataBound="AllFoods_RowDataBound">
            <Columns>

                   <asp:TemplateField HeaderText="Food Image">
                            <ItemTemplate>
                                <asp:Image ID="imgFood" runat="server" ImageUrl='<%# "~/Admin/Img_Upload/" & Eval("foodimg") %>' CssClass="img-fluid" Width="100px" Height="100px" style="border-radius:10px;"/>
                            </ItemTemplate>
                 </asp:TemplateField>   
                        
                <asp:BoundField DataField="foodname" HeaderText="Food Name"/>
                
                <asp:BoundField DataField="catname" HeaderText="Category"/>
                
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("foodprice") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Label">₹.</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="foodid" DataNavigateUrlFormatString="Editfood.aspx?fid={0}" HeaderText="Edit" Text="Edit" ControlStyle-CssClass="btn btn-warning">
<ControlStyle CssClass="btn btn-warning"></ControlStyle>
                   </asp:HyperLinkField>
                
                   <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" ControlStyle-CssClass="btn btn-danger" />
                
          </Columns>
        </asp:GridView>    
        </div>
        
    </div>
</asp:Content>


