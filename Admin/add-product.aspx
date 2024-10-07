<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="add-product.aspx.vb" Inherits="Admin_add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="add-food">
        <div class="row">
            <div class="col-12 title my-4">
                <h1 style="font-weight:bolder;">Add Food</h1>
            </div>
           
            <hr />   
         </div> 
            <div class="form-group">
                <div class="d-flex justify-content-between">
                <asp:Label ID="lblUpload" runat="server" Text="Food Image"></asp:Label><br />
                    <asp:Label ID="lblUploadError" runat="server" Text=""></asp:Label>
                </div>
                <asp:FileUpload ID="foodImgUpload" runat="server" class="mt-2 form-control"/>
            </div>
            <div class="form-group mt-3">
                <asp:Label ID="lblFoodName" runat="server" Text="Food Name"></asp:Label><br />
                <asp:TextBox ID="txtFoodName" runat="server" class="mt-2 form-control"/>
                 </div>
            <div class="form-group mt-3">
                <asp:Label runat="server" Text="Food Description"></asp:Label><br />
                <asp:TextBox id="txtfooddesc" rows="5" class="form-control mt-2" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col">
                    <div class="form-group mt-3">
                        <asp:Label runat="server" Text="Food Category"></asp:Label><br />
                        <asp:DropDownList ID="drpCategory" runat="server" class="form-select mt-2">
                            <asp:ListItem>--Please Select Category--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col">
                    <div class="form-group mt-3">
                        <asp:Label runat="server" Text="Food Price"></asp:Label><br />
                        <asp:TextBox ID="txtPrice" runat="server" class="mt-2 form-control"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Price can not be blank" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
         <div class="col">
                    <div class="form-group mt-3">
                        <asp:Label ID="Label1" runat="server" Text="Restaurant"></asp:Label><br />
                 
            <asp:DropDownList ID="ddlrestaurant" runat="server" class="form-select mt-2"></asp:DropDownList>
                        </div>
             </div>
            <asp:Button ID="btnAddfood" runat="server" Text="Add" class="btn btn-outline-primary mt-4 px-5"/>
    </div>
</asp:Content>

