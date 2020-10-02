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
        width: 25%;
    }
    .page{
        height: 30px;
    }

</style>

<div class="container">
    <div class="lawyer-box">
        <table class="info-table">
            <tr>
                <td class="td-title">问题</td>
                <td>状态</td>
                <td>创建时间</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${pageInfo.content}" var="item">
                <tr>
                    <td class="td-title">${item.question}</td>
                    <c:choose>
                        <c:when test="${item.status == 0}">
                            <td>待支付</td>
                        </c:when>
                        <c:when test="${item.status == 1}">
                            <td>已支付</td>
                        </c:when>
                        <c:when test="${item.status == 2}">
                            <td>回答中</td>
                        </c:when>
                        <c:when test="${item.status == 3}">
                            <td>已完成</td>
                        </c:when>
                        <c:otherwise>
                            <td>状态错误</td>
                        </c:otherwise>
                    </c:choose>
                    <td>${item.createtime}</td>
                    <c:choose>
                        <c:when test="${item.status == 0}">
                            <td><a href="${pageContext.request.contextPath}/question/toUserAdd?id=${item.questionId}">去提问</a></td>
                        </c:when>
                        <c:when test="${item.status == 1}">
                            <td><a href="${pageContext.request.contextPath}/question/toUserAdd?id=${item.questionId}">去提问</a></td>
                        </c:when>
                        <c:when test="${item.status == 2}">
                            <td><a href="${pageContext.request.contextPath}/fore/question/${item.questionId}">查看</a></td>
                        </c:when>
                        <c:when test="${item.status == 3}">
                            <td><a href="${pageContext.request.contextPath}/fore/question/${item.questionId}">查看</a></td>
                        </c:when>
                        <c:otherwise>
                            <td>状态错误</td>
                        </c:otherwise>
                    </c:choose>
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

