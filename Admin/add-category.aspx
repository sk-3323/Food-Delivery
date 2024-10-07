<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="add-category.aspx.vb" Inherits="Admin_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="add-food">
       <div class="row">
            <div class="col-12 title my-4">
                <h1 style="font-weight:bolder;">Add Category</h1>
            </div>
            <hr />   
         </div> 
              <div class="form-group mt-4">
                <asp:Label ID="Label1" runat="server" Text="Category Image"></asp:Label><br />
                  <asp:FileUpload ID="catPic" runat="server" class="form-control"/>
            </div>   
            <div class="form-group mt-4">
                <asp:Label runat="server" Text="Category Name"></asp:Label><br />
                <asp:TextBox ID="txtCategoryName" runat="server" class="mt-2 form-control" placeholder="Enter Category Name"/>
            </div>
            <div class="form-group mt-4">
                        <asp:Label runat="server" Text="Select Category Type"></asp:Label><br />
                       
                <asp:DropDownList ID="drpCategory" runat="server" class="form-select mt-2">
                    <asp:ListItem Enabled="True" Selected="True">---Please Select---</asp:ListItem>
                    <asp:ListItem>Breakfast</asp:ListItem>
                    <asp:ListItem>Lunch</asp:ListItem>
                    <asp:ListItem>Dinner</asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnAddcategory" runat="server" Text="Add" class="btn btn-outline-primary mt-4 px-5" OnClientClick="dispMsg();" />
           
                       
    </div>
</asp:Content>

