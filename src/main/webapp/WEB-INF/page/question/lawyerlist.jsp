<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../include/publicMeta.jsp" %>
<%@include file="../../include/publicLawyerHeader.jsp" %>
<%@include file="../../include/publicLawyerMenu.jsp" %>

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
        <span class="c-gray en">&gt;</span>
        所有提问
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
           href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
    </nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="cl pd-5 bg-1 bk-gray mt-20">
                <form action="${pageContext.request.contextPath}/question/lawyerlist" method="post" enctype="multipart/form-data"
                        class="form form-horizontal" id="form-admin-add" target="_parent">
                     <span class="select-box" style="width:150px;">
                    <select class="select" name="status" size="1">
                             <option value="0">请选择状态</option>
                             <option value="1">待支付</option>
                             <option value="2">回答中</option>
                             <option value="3">已完成</option>
                    </select>
                </span>
                    <span class="select-box" style="width:150px;">
                     <select class="select" name="userId" size="1">
                            <option value="0">请选择用户</option>
                             <c:forEach items="${userList}" var="user">
                                 <option value="${user.userId}">${user.userRealname}</option>
                             </c:forEach>
                     </select>
                </span>
                    <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                </form>

                <span class="r">共有数据：<strong>${pageInfo.totalElements}</strong> 条</span>
            </div>
            <table class="table table-border table-bordered table-bg" id="mytable">
                <tr>
                    <td>问题名称</td>
                    <td>用户编号</td>
                    <td>律师编号</td>
                    <td>提问花费</td>
                    <td>提问状态</td>
                    <td>创建时间</td>
                    <td>回复时间</td>
                    <td>律师回复</td>

                </tr>
                <c:forEach items="${pageInfo.content}" var="item">
                    <tr>
                        <td>${item.question}</td>
                        <td>${item.userId}</td>
                        <td>${item.lawyerId}</td>
                        <td>${item.payment}</td>
                        <c:if test="${item.status == 1}">
                            <td>待支付</td>
                        </c:if>
                        <c:if test="${item.status == 2}">
                            <td>回答中</td>
                        </c:if>
                        <c:if test="${item.status == 3}">
                            <td>已完成</td>
                        </c:if>
                        <td>${item.createtime}</td>
                        <td>${item.replytime}</td>
                        <td><a href="javascript:;" onclick="go('律师回复','${pageContext.request.contextPath}/question/toreply?id=${item.questionId}','800','500')">律师回复</a></td>
                    </tr>
                </c:forEach>
            </table>

        </article>
        <article class="cl pd-20">
            <%@include file="../adminPage.jsp" %>
        </article>
    </div>
</section>

<%@include file="../../include/publicFooter.jsp" %>

<script type="text/javascript">
    /*
        参数解释：
        title	标题
        url		请求的url
        id		需要操作的数据id
        w		弹出层宽度（缺省调默认值）
        h		弹出层高度（缺省调默认值）
    */
    function go(title, url, w, h) {
        layer_show(title, url, w, h);
    }


</script>

</body>
</html>
