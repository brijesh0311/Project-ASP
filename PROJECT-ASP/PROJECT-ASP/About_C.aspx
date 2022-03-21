<%@ Page Title="" Language="C#" MasterPageFile="~/CLIENT_SIDE.Master" AutoEventWireup="true" CodeBehind="About_C.aspx.cs" Inherits="PROJECT_ASP.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- inner banner -->
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">About Us</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right mx-2"></i>About</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- aboutblock1 section -->
    <section class="w3l-homeblock1 py-5" id="about">
        <div class="container py-md-5 py-4">
            <div class="row align-items-center">
                <div class="col-lg-6 pe-xl-5">
                    <h3 class="title-style mb-3">Welcome to <span>Dentition</span></h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad, quis nostrud
                        ullamco laboris nisi ut ex ea.
                    </p>
                    <div class="mt-4">
                        <ul class="service-list">
                            <li class="service-link"><a href="#url"><i class="fas fa-check-circle"></i>Exceptional
                                    Service</a></li>
                            <li class="service-link"><a href="#url"><i class="fas fa-check-circle"></i>Soft & Gentle</a>
                            </li>
                        </ul>
                    </div>
                    <a href="about.html" class="btn btn-style mt-4">Discover More</a>
                </div>
                <div class="col-lg-6 homeaboutblock mt-lg-0 mt-5">
                    <img src="assets/images/about.jpg" class="img-fluid radius-image" alt="image">
                </div>
            </div>
        </div>
    </section>
    <!-- //aboutblock1 section -->

    <!-- features section -->
    <section class="w3l-features py-5" id="features">
        <div class="container py-md-5 py-4">
            <h3 class="title-style text-center text-white mb-sm-5 mb-4">Our Awesome <span>Features</span></h3>
            <div class="row text-center">
                <div class="col-lg-4 col-sm-6">
                    <div class="feature-gd feature-gd-2">
                        <div class="icon">
                            <i class="fas fa-hand-holding-medical"></i>
                        </div>
                        <div class="icon-info">
                            <h5><a href="#features">The Quality of Used Medical Materials</a></h5>
                            <p>
                                Lorem ipsum dolor sit amet, sed eiusmod
                                temporinit sit.
                            </p>
                            <a href="services.html" class="btn btn-style-primary">Learn More<i
                                class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-sm-0 mt-4">
                    <div class="feature-gd feature-gd-2">
                        <div class="icon">
                            <i class="fas fa-tooth"></i>
                        </div>
                        <div class="icon-info">
                            <h5><a href="#features">Dental Implants-New Teeth in One Day</a></h5>
                            <p>
                                Lorem ipsum dolor sit amet, sed eiusmod
                                temporinit sit.
                            </p>
                            <a href="services.html" class="btn btn-style-primary">Learn More<i
                                class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-lg-0 mt-sm-5 mt-4">
                    <div class="feature-gd feature-gd-2">
                        <div class="icon">
                            <i class="fas fa-briefcase-medical"></i>
                        </div>
                        <div class="icon-info">
                            <h5><a href="#features">A Full Range of Dental Services</a></h5>
                            <p>
                                Lorem ipsum dolor sit amet, sed eiusmod
                                temporinit sit.
                            </p>
                            <a href="services.html" class="btn btn-style-primary">Learn More<i
                                class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-sm-5 mt-4">
                    <div class="feature-gd feature-gd-2">
                        <div class="icon">
                            <i class="far fa-money-bill-alt"></i>
                        </div>
                        <div class="icon-info">
                            <h5><a href="#features">Loyalty Discounts of Regular Customers</a></h5>
                            <p>
                                Lorem ipsum dolor sit amet, sed eiusmod
                                temporinit sit.
                            </p>
                            <a href="services.html" class="btn btn-style-primary">Learn More<i
                                class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-sm-5 mt-4">
                    <div class="feature-gd feature-gd-2">
                        <div class="icon">
                            <i class="fas fa-syringe"></i>
                        </div>
                        <div class="icon-info">
                            <h5><a href="#features">Dental Implants-New Teeth in One Day</a></h5>
                            <p>
                                Lorem ipsum dolor sit amet, sed eiusmod
                                temporinit sit.
                            </p>
                            <a href="services.html" class="btn btn-style-primary">Learn More<i
                                class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-sm-5 mt-4">
                    <div class="feature-gd feature-gd-2">
                        <div class="icon">
                            <i class="fas fa-teeth-open"></i>
                        </div>
                        <div class="icon-info">
                            <h5><a href="#features">Modern Methods of Teeth Straightening</a></h5>
                            <p>
                                Lorem ipsum dolor sit amet, sed eiusmod
                                temporinit sit.
                            </p>
                            <a href="services.html" class="btn btn-style-primary">Learn More<i
                                class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //features section -->


</asp:Content>
