<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>律师提问平台</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico">

    <!-- CSS
    ============================================ -->
    <!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet">

    <!-- Ionicons CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/ionicons.min.css" rel="stylesheet">

    <!-- Plugins CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/plugins.css" rel="stylesheet">

    <!-- Helper CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/helper.css" rel="stylesheet">

    <!-- Main CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet">

    <!-- Modernizer JS -->
    <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-2.8.3.min.js"></script>

</head>

<body class="grey-bg">
<div class="header-container header-container-home-4 header-sticky white-bg">
    <div class="header-top pt-15 pb-15">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="header-top-text text-center text-lg-left mb-0 mb-md-15 mb-sm-15">
                        <p><i class="icon ion-md-alarm"></i> 为您提供中国最专业的律师推荐，法律知识推荐等信息 <span class="support-no">: (012) 800 456 789</span>
                        </p>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="header-top-dropdown d-flex justify-content-center justify-content-lg-end">
                        <div class="single-dropdown">
                            <a href="${pageContext.request.contextPath}/fore/index" id="changeLanguage"><span
                                    id="languageName">首页</span></a>
                        </div>
                        <span class="separator pl-15 pr-15">|</span>
                        <c:if test="${session_user!=null}">
                            <div class="single-dropdown">
                                <a href="#">
                                    <span>
                                        欢迎您，${session_user.userNickname}
                                    </span>
                                </a>
                            </div>
                            <span class="separator pl-15 pr-15">|</span>
                            <div class="single-dropdown">
                                <a href="${pageContext.request.contextPath}/user/logout"><span>退出</span></a>
                            </div>
                            <span class="separator pl-15 pr-15">|</span>
                        </c:if>
                        <c:if test="${session_user==null}">
                            <div class="single-dropdown">
                                <a href="${pageContext.request.contextPath}/user/login"><span>登陆</span></a>
                            </div>
                            <span class="separator pl-15 pr-15">|</span>
                            <div class="single-dropdown">
                                <a href="${pageContext.request.contextPath}/user/register"><span>注册</span></a>
                            </div>
                            <span class="separator pl-15 pr-15">|</span>
                        </c:if>
                        <div class="single-dropdown">
                            <a href="${pageContext.request.contextPath}/admin/login"><span>管理员入口</span></a>
                        </div>
                        <span class="separator pl-15 pr-15">|</span>
                        <div class="single-dropdown">
                            <a href="${pageContext.request.contextPath}/lawyer/login"><span>律师入口</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="navigation-menu-top navigation-menu-top-home-4 pt-35 pb-35 pt-md-15 pb-md-15 pt-sm-15 pb-sm-15 mb-md-55 mb-sm-55">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-6 col-lg-2 col-md-6 col-sm-6 order-1 order-lg-1">
                    <div class="logo">
                        <a href="${pageContext.request.contextPath}/fore/index">
                            <img src="${pageContext.request.contextPath}/assets/images/logo.png" class="img-fluid"
                                 alt="">
                        </a>
                    </div>

                </div>
                <div class="col-12 col-lg-8 col-md-12 col-sm-12 order-3 order-lg-2">

                    <div class="header-feature-container mt-md-15 mt-sm-15">
                        <div class="single-feature d-flex">
                            <div class="image">
                                <i class="icon ion-md-globe"></i>
                            </div>
                            <div class="content">
                            </div>
                        </div>

                        <div class="single-feature d-flex">
                            <div class="image">
                                <i class="icon ion-md-checkmark-circle-outline"></i>
                            </div>
                            <div class="content">
                            </div>
                        </div>

                        <div class="single-feature d-flex mb-sm-0">
                            <div class="image">
                                <i class="icon ion-md-notifications-outline"></i>
                            </div>
                            <div class="content">
                            </div>
                        </div>

                    </div>

                </div>
                <div class=" col-6 col-lg-2 col-md-6 col-sm-6 order-2 order-lg-3">
                    <div class="minicart-section minicart-section-home-4">
                        <a href="${pageContext.request.contextPath}/fore/myQuestion" id="cart-icon">
                            <span class="image"><i class="icon ion-md-cart"></i></span>
                            <h5>我的提问<i class="fa fa-angle-down"></i></h5>
                            <p>点击查看</p>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="navigation-menu navigation-menu-home-4">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-7">
                    <div class="sticky-logo">
                        <a href="${pageContext.request.contextPath}/fore/index">
                            <img src="${pageContext.request.contextPath}/assets/images/logo.png" class="img-fluid"
                                 alt="">
                        </a>
                    </div>


                    <div class="search-icon-menutop-tablet search-icon-menutop-tablet-home-4 text-right d-inline-block d-lg-none">
                    </div>

                    <div class="main-menu">
                        <nav>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/fore/infos">法律知识</a></li>
                                <li><a href="${pageContext.request.contextPath}/fore/lawyers?type=0">免费咨询</a></li>
                                <li><a href="${pageContext.request.contextPath}/fore/lawyers?type=1">收费咨询</a></li>
                                <li><a href="${pageContext.request.contextPath}/fore/faq">律师推荐</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-12 col-lg-3">
                </div>
                <div class="col-12 d-block d-lg-none">
                    <div class="mobile-menu"></div>
                </div>
            </div>
        </div>
    </div>


</div>
