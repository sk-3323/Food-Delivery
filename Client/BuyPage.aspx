<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMasterPage.master" AutoEventWireup="false" CodeFile="BuyPage.aspx.vb" Inherits="Client_BuyPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link rel="stylesheet" href="assets/css/core-style.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/responsive.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section >
        
    <div class="cart_area section_padding_100 clearfix">
            <div class="container">
                <h1>Order Food</h1>
                <div class="row mt-2">
                    <div class="col-12">
                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th>Food</th>
                                        <th>Restaurant</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="cart_product_img d-flex align-items-center">
                                            <a>
                                                <asp:Image ID="foodImg" runat="server" />
                                            </a>
                                            <h6><asp:Label ID="foodname" runat="server" Text="" Font-Bold="true" ></asp:Label></h6>
                                        </td>
                                        <td class="price"><span><asp:Label ID="restaurant" runat="server" Text="" Font-Bold="true"></asp:Label></span></td>
                                        <td class="price"><span><asp:Label ID="price" runat="server" Text="" Font-Bold="true"></asp:Label></span></td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                       

                    </div>
                </div>

                <div class="row d-flex justify-content-between">
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="coupon-code-area mt-70">
                            <div class="cart-page-heading">
                                <h5>Cupon code</h5>
                                <p>Enter your cupone code</p>
                            </div>
                            <form action="#">
                                <input type="search" name="search" placeholder="#569ab15">
                                <button type="submit">Apply</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-total-area mt-70">
                            <div class="cart-page-heading">
                                <h5>Cart total</h5>
                                <p>Final info</p>
                            </div>

                            <ul class="cart-total-chart">
                                <li><span>Subtotal</span> <span><asp:Label ID="lblprice" runat="server" Text=""></asp:Label></span></li>
                                <li><span>Shipping</span> <span>30</span></li>
                                <li><span><strong>Total</strong></span> <span><strong><asp:Label ID="totalPrice" runat="server" Text=""></asp:Label></strong></span></li>
                            </ul>
                            <a href="" class="btn karl-checkout-btn">Proceed to checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
</asp:Content>

