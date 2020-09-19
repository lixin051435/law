<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp"%>
<style type="text/css">
    #mydiv{width: 100%;height: 170px;}
    #mycart{width:650px;heiget:140px;margin: 135px auto;font-size: 25px}
</style>
<div id="mydiv" class="checkout-title">
    <div id="mycart">${msg} 您已支付成功,共计${total}元<a href="${pageContext.request.contextPath}/question/toUserAdd?id=${question.questionId}" style="color: red">去提问》</a></div>
</div>
<%@ include file="../../foreinclude/foreFooter.jsp"%>
