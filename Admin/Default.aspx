<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="assets/css/Gredient.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="text-muted text-wrap">Hi <asp:Label ID="username" runat="server" Text="Label"></asp:Label> ,Welcome Back to Admin Panel</span>
    <div class="row mt-3">
        <div class="col-md-4 col-sm-6 ">
            <div class="card px-5 py-3 gred1 d-flex justify-content-center" style="height:24vh;">
                <h3><b>Total Users</b></h3>
                <asp:Label ID="lblCountUser" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="card px-5 py-3 gred2 d-flex justify-content-center" style="height:24vh;">
                <h3><b>Total Restaurant</b></h3>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="card px-5 py-3 gred3 d-flex justify-content-center" style="height:24vh;">
                <h3><b>Total Foods</b></h3>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="card px-5 py-3 gred5 d-flex justify-content-center" style="height:24vh;">
                <h3><b>Total Food Category</b></h3>
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="card px-5 py-3 gred4 d-flex justify-content-center" style="height:24vh;">
                <h3><b>Total Orders</b></h3>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="card px-5 py-3 gred6 d-flex justify-content-center" style="height:24vh;">
                <h3><b>Total Revenue</b></h3>
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

