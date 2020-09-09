<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../../foreinclude/foreHander.jsp"%>
<div class="hero-area home-four mb-30">
    <div class="slider-container">
        <div class="slider-style-2">
            <div class="hero-slider-item slider-bg-9">
                <div class="d-flex flex-column justify-content-center align-items-start h-100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7 col-xl-6 col-md-7 text-center">
                                <div class="slider-content">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="hero-slider-item slider-bg-10">
                <div class="d-flex flex-column justify-content-center align-items-start h-100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7 col-xl-6 col-md-7 text-center">
                                <div class="slider-content">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="hero-slider-item slider-bg-11">

                <div class="d-flex flex-column justify-content-center align-items-start h-100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7 col-xl-6 col-md-7 text-center">
                                <div class="slider-content">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="brand-logo-slider home-four-brand-slider mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="brand-logo-slider-container">
                    <c:forEach items="${lawyerList}" var="item">
                        <div class="single-brand">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/${item.lawyerIcon}" style="height: 100px;" class="img-fluid" alt="">
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.min.js"></script>
<%@ include file="../../foreinclude/foreFooter.jsp"%>

