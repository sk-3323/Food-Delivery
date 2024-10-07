<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="ProfileUpdate.aspx.vb" Inherits="Admin_ProfileUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="add-profile">
        <div class="row">
            <div class="col-12 title my-4">
                <h1 style="font-weight:bolder;">Update Profile</h1>
            </div>
            <asp:Label ID="lblMesg" runat="server" Text="" ForeColor="Red"></asp:Label>
            <hr />   
         </div> 
            <div class="form-group">
                <div class="d-flex justify-content-between">
                <asp:Label ID="lblUpload" runat="server" Text="Profile Image"></asp:Label><br />
                </div>
                <asp:FileUpload ID="avatarUpload" runat="server" class="mt-2 form-control"/>
            </div>
            <div class="form-group mt-3">
                <asp:Label ID="lblProfileName" runat="server" Text="Username"></asp:Label><br />
                <asp:TextBox ID="txtUsername" runat="server" class="mt-2 form-control"/>
            </div>
           <div class="form-group mt-3">
                <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label><br />
                <asp:TextBox id="txtMobile" class="form-control mt-2" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnupdateProfile" runat="server" Text="Update" class="btn btn-outline-primary mt-4 px-5"/>
    </div>
</asp:Content>

