<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Editfood.aspx.vb" Inherits="Admin_Editfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="add-food">
        <div class="row">
            <div class="col-12 title my-4">
                <h1 style="font-weight:bolder;">Edit 
                    <asp:Label ID="lblFood" runat="server" Text=""></asp:Label>
                </h1>
            </div>
           
            <hr />   
         </div> 
            <div class="form-group">
                <div class="d-flex justify-content-between">
                <asp:Label ID="lblUpload" runat="server" Text="Food Image"></asp:Label><br />
                <asp:Label ID="lblUploadError" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                </div>
                <asp:FileUpload ID="foodImgUpload" runat="server" class="mt-2 form-control"/>
            </div>
            <div class="form-group mt-3">
                <asp:Label ID="lblFoodName" runat="server" Text="Food Name"></asp:Label><br />
                <asp:TextBox ID="txtFoodName" runat="server" class="mt-2 form-control"/>
            </div>
            <div class="form-group mt-3">
                <asp:Label ID="Label1" runat="server" Text="Food Description"></asp:Label><br />
                <asp:TextBox id="txtfooddesc" rows="5" class="form-control mt-2" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col">
                    <div class="form-group mt-3">
                        <asp:Label ID="Label2" runat="server" Text="Food Category"></asp:Label><br />
                        <asp:DropDownList ID="drpCategory" runat="server" class="form-select mt-2">
                            <asp:ListItem>--Please Select Category--</asp:ListItem>
                        </asp:DropDownList>
                     
                    </div>
                </div>
                <div class="col">
                    <div class="form-group mt-3">
                        <asp:Label ID="Label3" runat="server" Text="Food Price"></asp:Label><br />
                        <asp:TextBox ID="txtPrice" runat="server" class="mt-2 form-control"/>
                    </div>
                </div>
            </div>
            <asp:Button ID="btnUpdatefood" runat="server" Text="Update" class="btn btn-outline-primary mt-4 px-5"/>
    </div>
</asp:Content>

