﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CLIENT_SIDE.Master" AutoEventWireup="true" CodeBehind="Services_C.aspx.cs" Inherits="PROJECT_ASP.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- inner banner -->
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">Our Services</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right mx-2"></i>Services</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- serviceblock1 section -->
    <section class="w3l-homeblock7 py-5">
        <div class="container py-md-5 py-4">
            <div class="row align-items-center">
                <div class="col-lg-4">
                    <div class="pr-5">
                        <h3 class="title-big-2">Helps improve your smile</h3>
                        <p class="mt-4">
                            Semper at tempufddfel. Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                            dignissimos quis
                        </p>
                    </div>
                    <div class="pr-5 mt-lg-5 mt-4 sec-bor">
                        <h3 class="title-big-2 pt-lg-5 pt-4">Helps make you look younger</h3>
                        <p class="mt-4">
                            Semper at tempufddfel. Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                            dignissimos quis
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-8 text-center mt-lg-0 mt-5">
                    <img src="assets/images/service1.jpg" alt="" class="img-fluid radius-image">
                </div>
                <div class="col-lg-4 col-md-6 mt-lg-0 mt-5 text-lg-end">
                    <div class="pl-lg-5">
                        <h3 class="title-big-2">Boosts a person’s self esteem</h3>
                        <p class="mt-4">
                            Semper at tempufddfel. Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                            dignissimos quis
                        </p>
                    </div>
                    <div class="pl-lg-5 mt-lg-5 mt-4 sec-bor">
                        <h3 class="title-big-2 pt-lg-5 pt-4">Helps improve your appearance</h3>
                        <p class="mt-4">
                            Semper at tempufddfel. Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                            dignissimos quis
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //serviceblock1 section -->

    <!-- serviceblock2 section -->
    <div class="service-section py-5">
        <div class="container py-md-5 py-4">
            <h3 class="title-style text-center mb-sm-5 mb-4">Our <span>Services</span></h3>
            <div class="row justify-content-center">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-6 item">
                            <div class="card">
                                
                                <div class="card-header p-0 position-relative border-0" >
                                    <a href="Service_C.aspx">
                                        <asp:Image ID="Image1" runat="server" class="d-block img-responsive" ImageUrl='<%# Eval("img", "~/uploads/{0}") %>'/>
                                        <%--<img class="d-block img-responsive" src="assets/images/s1.jpg" alt="card-image">--%>
                                    </a>
                                </div>
                                <div class="card-body service-details">
                                    <%--<h4 href="services.html" class="service-heading">Cosmetic Dentistry</h4>--%>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' class="service-heading" ForeColor="#FFFF66"  Font-Bold="True" Font-Size="14"></asp:Label>

                                </div>
                                 <div class="card-body service-details">
                                    <%--<label>jjadbjdbekjbclsjdcjknvs</label>--%>
                                    <%--<asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>' Font-Overline="False"></asp:Label>--%>
                                    <p><%# Eval("Description").ToString().Length > 180 ? Eval("Description").ToString().Substring(0, 180) + "..." : Eval("Description").ToString()%></p>
                                    
                                 </div>
                                 
                            </div>
                        </div>
                       </ItemTemplate>
                </asp:Repeater>
                <%--<div class="col-lg-3 col-md-6 item">
                    <div class="card">
                        <div class="card-header p-0 position-relative border-0">
                            <a href="services.html">
                                <img class="d-block img-responsive" src="assets/images/s1.jpg" alt="card-image">
                            </a>
                        </div>
                        <div class="card-body service-details">
                            <h4 href="services.html" class="service-heading">Cosmetic Dentistry</h4>
                        </div>
                         <div class="card-body service-details">
                            <label>jjadbjdbekjbclsjdcjknvs</label>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-md-0 mt-4 pt-md-0 pt-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative border-0">
                            <a href="services.html">
                                <img class="d-block img-responsive" src="assets/images/s2.jpg" alt="card-image">
                            </a>
                        </div>
                        <div class="card-body service-details">
                            <h4 href="services.html" class="service-heading">Child’s Dental Visit</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-lg-0 mt-4 pt-lg-0 pt-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative border-0">
                            <a href="services.html">
                                <img class="d-block img-responsive" src="assets/images/s3.jpg" alt="card-image">
                            </a>
                        </div>
                        <div class="card-body service-details">
                            <h4 href="services.html" class="service-heading">Complete Whitening</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-lg-0 mt-4 pt-lg-0 pt-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative border-0">
                            <a href="services.html">
                                <img class="d-block img-responsive" src="assets/images/s4.jpg" alt="card-image">
                            </a>
                        </div>
                        <div class="card-body service-details">
                            <h4 href="services.html" class="service-heading">Sedation Dentistry</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 item mt-4 pt-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative border-0">
                            <a href="services.html">
                                <img class="d-block img-responsive" src="assets/images/s5.jpg" alt="card-image">
                            </a>
                        </div>
                        <div class="card-body service-details">
                            <h4 href="services.html" class="service-heading">Air Flow Cleaning</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-4 pt-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative border-0">
                            <a href="services.html">
                                <img class="d-block img-responsive" src="assets/images/s7.jpg" alt="card-image">
                            </a>
                        </div>
                        <div class="card-body service-details">
                            <h4 href="services.html" class="service-heading">Dental Cleaning</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-4 pt-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative border-0">
                            <a href="services.html">
                                <img class="d-block img-responsive" src="assets/images/s6.jpg" alt="card-image">
                            </a>
                        </div>
                        <div class="card-body service-details">
                            <h4 href="services.html" class="service-heading">Aligning the Teeth</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-4 pt-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative border-0">
                            <a href="services.html">
                                <img class="d-block img-responsive" src="assets/images/s8.jpg" alt="card-image">
                            </a>
                        </div>
                        <div class="card-body service-details">
                            <h4 href="services.html" class="service-heading">Fissure Sealants</h4>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
    <!-- //serviceblock2 section -->

    <!-- skills section -->
    <section class="w3l-progress pt-5" id="progress">
        <div class="container pt-4">
            <div class="row align-items-center">
                <div class="col-lg-6 pe-lg-5">
                    <div class="progress-info info1">
                        <h6 class="progress-tittle">Orthodontics <span class="">80%</span></h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-1" role="progressbar"
                                style="width: 80%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="progress-info info2">
                        <h6 class="progress-tittle">Cosmetic Work <span class="">95%</span>
                        </h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-2" role="progressbar"
                                style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="progress-info info3">
                        <h6 class="progress-tittle">Implants <span class="">60%</span></h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-3" role="progressbar"
                                style="width: 60%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="progress-info info4">
                        <h6 class="progress-tittle">React JS <span class="">85%</span></h6>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped gradient-4" role="progressbar"
                                style="width: 85%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 text-center">
                    <img src="assets/images/img1.png" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </section>
    <!-- //skills section -->

</asp:Content>
