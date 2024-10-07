<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="AllRestaurant.aspx.vb" Inherits="Admin_AllRestaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 title my-4">
                <h1 style="font-weight:bolder;">All Restaurants</h1>
            </div>
            <hr />
         </div>
            <div class="row">
            <asp:GridView ID="AllRestaurant" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" DataKeyNames="Id">
            <Columns>
                   <asp:TemplateField HeaderText="Food Image">
                            <ItemTemplate>
                                <asp:Image ID="imgRest" runat="server" ImageUrl='<%# "~/Admin/RestaurantImg/" & Eval("img")%>' CssClass="img-circle" Width="100px" Height="100px" />
                            </ItemTemplate>
                 </asp:TemplateField>   
                        
                <asp:BoundField DataField="name" HeaderText="Restaurant Name"/>

                <asp:BoundField DataField="address" HeaderText="Address"/>
                
                <asp:BoundField DataField="phone" HeaderText="Phone Number"/>

                <asp:BoundField DataField="email" HeaderText="Email Address"/>

                <asp:BoundField DataField="openinghrs" HeaderText="Opening Time"/>

                <asp:BoundField DataField="closinghrs" HeaderText="Closing Time"/>

          </Columns>
        </asp:GridView>    
        </div>
        
    </div>
</asp:Content>

