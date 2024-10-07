<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Client_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="py-5 overflow-hidden bg-primary" id="home" style="min-height: 85vh;">
        <div class="container">
            <div class="row flex-center">
                <div class="col-md-5 col-lg-6 order-0 order-md-1 mt-8 mt-md-0">
                    <a class="img-landing-banner" href="#!">
                        <img class="img-fluid" src="assets/img/gallery/hero-header.png" alt="hero-header" /></a>
                </div>
                <div class="col-md-7 col-lg-6 py-8 text-md-start text-center">
                    <h1 class="display-1 fs-md-5 fs-lg-6 fs-xl-8 text-light">Are you starving?</h1>
                    <h1 class="text-800 mb-5 fs-4">Within a few clicks, find meals that<br class="d-none d-xxl-block" />
                        are accessible near you</h1>
                    <asp:HyperLink ID="HyperLink3" runat="server" Text="Show More Dishes" CssClass="btn btn-dark" NavigateUrl="~/Client/ShowFoods.aspx"></asp:HyperLink>
                </div>
            </div>
        </div>
    </section>
    <section class="py-0 bg-primary-gradient">

        <div class="container">
            <div class="row justify-content-center g-0">
                <div class="col-xl-9">
                    <div class="col-lg-6 text-center mx-auto mb-3 mb-md-5 mt-4">
                        <h5 class="fw-bold text-danger fs-3 fs-lg-5 lh-sm my-6">How does it work</h5>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-3 mb-6">
                            <div class="text-center">
                                <img class="shadow-icon" src="assets/img/gallery/location.png" height="112" alt="..." />
                                <h5 class="mt-4 fw-bold">Select location</h5>
                                <p class="mb-md-0">Choose the location where your food will be delivered.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3 mb-6">
                            <div class="text-center">
                                <img class="shadow-icon" src="assets/img/gallery/order.png" height="112" alt="..." />
                                <h5 class="mt-4 fw-bold">Choose order</h5>
                                <p class="mb-md-0">Check over hundreds of menus to pick your favorite food</p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3 mb-6">
                            <div class="text-center">
                                <img class="shadow-icon" src="assets/img/gallery/pay.png" height="112" alt="..." />
                                <h5 class="mt-4 fw-bold">Pay advanced</h5>
                                <p class="mb-md-0">It's quick, safe, and simple. Select several methods of payment</p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3 mb-6">
                            <div class="text-center">
                                <img class="shadow-icon" src="assets/img/gallery/meals.png" height="112" alt="..." />
                                <h5 class="mt-4 fw-bold">Enjoy meals</h5>
                                <p class="mb-md-0">Food is made and delivered directly to your home.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end of .container-->

    </section>
    <section class="py-4 overflow-hidden">

        <div class="container">
            <div class="row h-100">
                <div class="col-lg-7 mx-auto text-center mt-7 mb-5">
                    <h5 class="fw-bold fs-3 fs-lg-5 lh-sm">Popular items</h5>
                </div>
                <div class="col-12">
                    <div class="carousel slide" id="carouselPopularItems" data-bs-touch="false" data-bs-interval="false">
                        <div class="carousel-inner">
                            <div class="carousel-item active" data-bs-interval="10000">
                                <div class="row gx-3 h-100 align-items-center">
                                    <asp:Repeater ID="allPopular" runat="server">
                                        <ItemTemplate>

                                        <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                                            <div class="card card-span h-100 rounded-3">
                                                <asp:Image ID="Image1" runat="server" class="img-fluid rounded-3" ImageUrl='<%# "~/Admin/Img_Upload/" & Eval("foodimg") %>' Height="200px"/>
                                                <div class="card-body ps-1">
                                                    <h5 class="fw-bold text-1000 text-truncate mb-1"><%# Eval("foodname") %></h5>
                                                    <div><span class="text-warning me-2"><i class="fas fa-map-marker-alt"></i></span><span class="text-primary"><%# Eval("name")%></span></div>
                                                    <span class="text-1000 fw-bold"><%# Eval("foodprice")%> ₹</span>
                                                </div>
                                            </div>
                                            <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "BuyPage.aspx?id=" & Eval("foodid")%>' CssClass="btn btn-lg btn-danger w-100 d-grid gap-2">Order Now</asp:HyperLink>
                                      
                                        </div>
                                       </ItemTemplate>
    
                                    </asp:Repeater>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end of .container-->

    </section>
    <section id="testimonial">
        <div class="container">
            <div class="row h-100">
                <div class="col-lg-7 mx-auto text-center mb-6">
                    <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3">Featured Restaurants</h5>
                </div>
            </div>
            <div class="row gx-2 d-flex justify-content-center align-items-center ">
                <asp:Repeater ID="allrestaurant" runat="server">
                    <ItemTemplate>
                        <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5 ">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ShowRestaurantWise.aspx?restname=" & Eval("name") %>'>

                                <div class="card card-span d-flex justify-content-center align-items-center h-100 text-white rounded-3">
                                    <asp:Image
                                        ID="imgFood"
                                        runat="server"
                                        ImageUrl='<%# "~/Admin/RestaurantImg/" & Eval("img")%>'
                                        CssClass="img-fluid"
                                        Width="200px"
                                        Height="160px"
                                        Style="border-radius: 20px;" />
                                    <div class="card-body ps-0 d-flex justify-content-center flex-column">
                                        <div class="d-flex align-items-center mb-3">
                                            <div class="flex-1 ms-3">
                                                <h5 class="mb-0 fw-bold text-1000"><%# Eval("name")%></h5>
                                            </div>
                                        </div>
                                        <span class="badge bg-soft-success p-2"><span class="fw-bold fs-1 text-success">
                                            <%# "Opening Time " & Eval("openinghrs")%>
                                        </span></span>
                                        <span class="badge bg-soft-danger p-2 mt-3"><span class="fw-bold fs-1 text-danger">
                                            <%# "Closing Time " & Eval("closinghrs")%>
                                        </span></span>
                                    </div>
                                </div>

                            </asp:HyperLink>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </section>
    <section class="py-8 overflow-hidden">

        <div class="container">
            <div class="row h-100">
                <div class="col-lg-7 mx-auto text-center mb-6">
                    <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3">Search By Category</h5>
                </div>
            </div>
            <div class="row flex-center">
                <div class="col-12">
                    <div class="carousel slide" id="carouselSearchByFood" data-bs-touch="false" data-bs-interval="false">
                        <div class="carousel-inner">
                            <div class="carousel-item active" data-bs-interval="10000">
                                <div class="row h-100 align-items-center d-flex justify-content-center gap-3 flex-wrap">

                                    <asp:Repeater ID="allCategory" runat="server">
                                        <ItemTemplate>

                                            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5 ">
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ShowCategoryWise.aspx?catname=" & Eval("catname") %>'>
                                                    <div class="card card-span d-flex justify-content-center align-items-center h-100 rounded-circle">
                                                        <!-- Food Image -->
                                                        <asp:Image
                                                            ID="imgFood"
                                                            runat="server"
                                                            ImageUrl='<%# "~/Admin/Img_Upload/" & Eval("catimg") %>'
                                                            CssClass="img-fluid rounded-circle"
                                                            Width="200px"
                                                            Height="180px" />

                                                        <!-- Card Body -->
                                                        <div class="card-body ps-0">
                                                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2">
                                                                <%# Eval("catname") %>
                                                            </h5>
                                                        </div>
                                                    </div>
                                                </asp:HyperLink>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end of .container-->

    </section>
    <section class="py-0">
        <div class="bg-holder" style="background-image: url(assets/img/gallery/cta-two-bg.png); background-position: center; background-size: cover;">
        </div>
        <!--/.bg-holder-->

        <div class="container">
            <div class="row flex-center">
                <div class="col-xxl-9 py-7 text-center">
                    <h1 class="fw-bold mb-4 text-white fs-6">Are you ready to order
                        <br />
                        with the best deals? </h1>
                    <a class="btn btn-danger" href="ShowFoods.aspx">PROCEED TO ORDER<i class="fas fa-chevron-right ms-2"></i></a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

