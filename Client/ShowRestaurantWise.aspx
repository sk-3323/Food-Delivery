<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMasterPage.master" AutoEventWireup="false" CodeFile="ShowRestaurantWise.aspx.vb" Inherits="Client_ShowRestaurantWise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="mt-0">
    <div class="container">
        <h1>Display Only <asp:Label ID="cattag" runat="server" Text=""></asp:Label></h1>
        
        <div class="row mt-5">
            <asp:Repeater ID="allFood" runat="server">
                <ItemTemplate>

                    <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card p-3" style="width: 18rem;">
                            <!-- Food Image -->
                            <asp:Image
                                ID="imgFood"
                                runat="server"
                                ImageUrl='<%# "~/Admin/Img_Upload/" & Eval("foodimg")%>'
                                CssClass="img-fluid"
                                Width="300px"
                                Height="260px"
                                Style="border-radius: 20px;" />

                            <!-- Card Body -->
                            <div class="card-body ps-1">
                                <h5 class="card-title fw-bold text-1000 text-truncate mb-2">
                                    <%# Eval("foodname")%>
                                </h5>
                                <p class="card-text text-muted"><%# Eval("fooddesc") %></p>
                                <p class="card-text"><%# "Price " & Eval("foodprice") & " ₹"%></p>
                                <p class="card-text"><%# "Restaurant : " & Eval("name") %></p>
                                
                                <asp:Hyperlink ID="Hyperlink1" runat="server" NavigateUrl='<%# "BuyPage.aspx?id=" & Eval("foodid")%>' CssClass="btn btn-primary">Order Now</asp:Hyperlink>

                            </div>  
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>
        </section>
</asp:Content>

