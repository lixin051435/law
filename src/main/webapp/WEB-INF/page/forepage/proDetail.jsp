<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp" %>

<div class="breadcrumb-area pt-15 pb-15">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-container">
                    <nav>
                        <ul>
                            <li class="parent-page"><a href="${pageContext.request.contextPath}/fore/index">Home</a></li>
                            <li>详细信息</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="single-product-content-area mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-6 col-xs-12 mb-xxs-25 mb-xs-25 mb-sm-25">
                <!-- single product tabstyle one image gallery -->
                <div class="product-image-slider fl-product-image-slider fl3-product-image-slider">
                    <!--product large image start -->
                    <div class="tab-content product-large-image-list fl-product-large-image-list fl3-product-large-image-list"
                         id="myTabContent">
                        <div class="tab-pane fade show active" id="single-slide-1" role="tabpanel"
                             aria-labelledby="single-slide-tab-1">
                            <div class="single-product-img img-full">
                                <img src="${pageContext.request.contextPath}/${product.lawyerIcon}" class="img-fluid"
                                     alt="">
                                <a href="${pageContext.request.contextPath}/${product.lawyerIcon}"
                                   class="big-image-popup"><i class="fa fa-search-plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="product-small-image-list fl-product-small-image-list fl3-product-small-image-list">
                        <div class="nav small-image-slider fl3-small-image-slider" role="tablist">
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-1" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/01.jpg"
                                         class="img-fluid" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-2" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/02.jpg"
                                         class="img-fluid" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-3" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/03.jpg"
                                         class="img-fluid" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-4" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/04.jpg"
                                         alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-5" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/05.jpg"
                                         alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 col-xs-12">
                <div class="product-feature-details">
                    <h2 class="product-title mb-15">${product.lawyerNickname}</h2>

                    <div class="rating d-inline-block mb-15">
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star"></i>
                    </div>

                    <div class="category-list-container mb-20">
                        <p><span>律师姓名: ${product.lawyerRealname}</span></p>
                        <p><span>律师性别: ${product.lawyerGender}</span></p>
                        <p><span>擅长领域: ${product.lawyerField}</span></p>
                    </div>

                    <div class="cart-buttons mb-20">
                        <hr>
                        <span class="quantity-title mr-10">咨询价格: ${product.lawerExpense}</span>
                        <div class="add-to-cart-btn d-block">
                            <a href="${pageContext.request.contextPath}/fore/pay?lawyerId=${product.lawyerId}" class="fl-btn" id="add_cart"><i class="fa fa-shopping-cart"></i>点我付款</a>
                        </div>
                    </div>

                    <div class="social-share-buttons">
                        <h3>分享该律师到</h3>
                        <ul>
                            <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a class="pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="product-description-review-area mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="tab-slider-wrapper product-description-review-container">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="description-tab" data-toggle="tab"
                               href="#product-description" role="tab"
                               aria-selected="true">描述</a>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="product-description" role="tabpanel"
                             aria-labelledby="description-tab">
                            <div class="product-description">
                                <p>${product.lawyerDescription}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<%@ include file="../../foreinclude/foreFooter.jsp" %>
