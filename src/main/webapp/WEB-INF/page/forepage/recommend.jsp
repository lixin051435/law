<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../../foreinclude/foreHander.jsp" %>
<style type="text/css">
    .lawyer-box {
        display: flex;
        flex-wrap: wrap;
        /*justify-content: space-around;*/
    }
    .lawyer{
        margin-bottom: 20px;
        margin-left: 50px;
    }
    .lawyer-img{
        width: 230px;
        height: 230px;
    }
    .page{
        height: 30px;
    }

</style>

<div class="container">
    <div class="lawyer-box">
        <c:forEach items="${list}" var="item">
            <div class="lawyer">
                <a href="${pageContext.request.contextPath}/fore/lawyer/${item.lawyerId}">
                    <img src="${pageContext.request.contextPath}/${item.lawyerIcon}" class="lawyer-img">
                    <div>${item.lawyerTitle}</div>
                </a>
            </div>
        </c:forEach>
    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.min.js"></script>
<%@ include file="../../foreinclude/foreFooter.jsp" %>

