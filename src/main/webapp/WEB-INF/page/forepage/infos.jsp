<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../../foreinclude/foreHander.jsp" %>
<style type="text/css">
    .info-table{
        width: 90%;
        margin: 0 auto;
        /*border: red solid 1px;*/
    }
    td{
        text-align: center;
    }
    .td-title{
        width: 50%;
    }
    .page{
        height: 30px;
    }

</style>

<div class="container">
    <div class="lawyer-box">
        <table class="info-table">
            <tr>
                <td class="td-title">标题</td>
                <td>类型</td>
                <td>创建时间</td>
            </tr>
            <c:forEach items="${pageInfo.content}" var="item">
                <tr>
                    <td class="td-title"><a href="${pageContext.request.contextPath}/fore/info/${item.infoId}">${item.infoTitle}</a></td>
                    <td>${item.infoType}</td>
                    <td>${item.createtime}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="page">
        <%@include file="../adminPage.jsp"%>
    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.min.js"></script>
<%@ include file="../../foreinclude/foreFooter.jsp" %>

