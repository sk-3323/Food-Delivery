<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="AddRestaurant.aspx.vb" Inherits="Admin_AddRestaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="add-rest">
        <div class="row">
            <div class="col-12 title my-4">
                <h1 style="font-weight:bolder;">Add Restaurant</h1>
            </div>
           
            <hr />   
         </div> 
            <div class="form-group">
                <div class="d-flex justify-content-between">
                <asp:Label ID="lblUpload" runat="server" Text="Restaurant Image"></asp:Label><br />
                <asp:Label ID="lblUploadError" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                </div>
                <asp:FileUpload ID="RestaurantImg" runat="server" class="mt-2 form-control"/>
            </div>
            <div class="form-group mt-3">
                <asp:Label ID="lblRestaurantName" runat="server" Text="Restaurant Name"></asp:Label><br />
                <asp:TextBox ID="txtRestaurantName" runat="server" class="mt-2 form-control"/>
            </div>
            <div class="form-group mt-3">
                <asp:Label ID="lblRestaurantAddress" runat="server" Text="Restaurant Address"></asp:Label><br />
                <asp:TextBox ID="txtRestaurantAddress" rows="5" class="form-control mt-2" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group mt-3">
                        <asp:Label runat="server" ID="lblPhone" Text="Phone Number"></asp:Label>
                        <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group mt-3">
                        <asp:Label runat="server" ID="lblEmail" Text="Email Address"></asp:Label>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
         <div class="row">
                <div class="col-md-6">
                    <div class="form-group mt-3">
                        <asp:Label ID="lblopening" runat="server" Text="Opening Hours"></asp:Label><br />
                        <asp:DropDownList ID="ddlopening" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group mt-3">
                        <asp:Label ID="lblClosing" runat="server" Text="Closing Hours"></asp:Label><br />
                        <asp:DropDownList ID="ddlclosing" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
         </div>
         <asp:Label ID="lblerr" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnAddRestaurant" runat="server" Text="Add" class="btn btn-outline-primary mt-4 px-5"/>
    </div>
</asp:Content>

