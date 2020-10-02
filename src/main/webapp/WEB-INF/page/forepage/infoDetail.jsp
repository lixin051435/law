<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../../foreinclude/foreHander.jsp" %>
<style type="text/css">

    td{
        text-align: center;
    }
    .info-title{
        display: block;
        width: 45%;
        margin: 0 auto;
    }

</style>

<div class="container">
    <div class="lawyer-box" style="margin-bottom: 100px;">
       <h1 class="info-title">${info.infoTitle}</h1>
        <hr>
        ${info.infoContent}
    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.min.js"></script>
<%@ include file="../../foreinclude/foreFooter.jsp" %>

