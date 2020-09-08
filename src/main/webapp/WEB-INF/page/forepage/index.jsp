<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../../foreinclude/foreHander.jsp"%>

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

