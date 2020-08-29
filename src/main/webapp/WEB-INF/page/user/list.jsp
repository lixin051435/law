<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../include/publicMeta.jsp"%>
<%@include file="../../include/publicHeader.jsp"%>
<%@include file="../../include/publicMenu.jsp"%>

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
        <span class="c-gray en">&gt;</span>
        用户管理
         <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
                 href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
    </nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="cl pd-5 bg-1 bk-gray mt-20">
                <span class="l"> <a href="javascript:;" onclick="go('添加','${pageContext.request.contextPath}/user/toadd','800','500')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加</a> </span>
                <span class="r">共有数据：<strong>${pageInfo.totalElements}</strong> 条</span>
            </div>
            <table class="table table-border table-bordered table-bg" id="mytable">
                <tr>
                    <td>用户昵称</td>
                    <td>用户姓名</td>
                    <td>用户性别</td>
                    <%--<td>用户密码</td>--%>
                    <td>用户地址</td>
                    <%--<td>用户电话</td>--%>
                    <td>用户邮箱</td>
                    <%--<td>VIP等级</td>--%>
                    <td>编辑操作</td>
                    <td>删除操作</td>
                </tr>
                <c:forEach items="${pageInfo.content}" var="item">
                    <tr>
                        <td>${item.userNickname}</td>
                        <td>${item.userRealname}</td>
                        <td>${item.userGender}</td>
                        <%--<td>${item.userPassword}</td>--%>
                        <td>${item.userAddress}</td>
                        <%--<td>${item.userPhone}</td>--%>
                        <td>${item.userEmail}</td>
                        <%--<td>${item.vipLevel}</td>--%>
                        <td><a href="javascript:;" onclick="go('编辑','${pageContext.request.contextPath}/user/toedit?id=${item.userId}','800','500')">编辑</a></td>
                        <td><a href="${pageContext.request.contextPath}/user/delete?id=${item.userId}">删除</a></td>
                    </tr>
                </c:forEach>
            </table>

        </article>
        <article class="cl pd-20">
            <%@include file="../adminPage.jsp"%>
        </article>
    </div>
</section>

<%@include file="../../include/publicFooter.jsp"%>

<script type="text/javascript">
    /*
        参数解释：
        title	标题
        url		请求的url
        id		需要操作的数据id
        w		弹出层宽度（缺省调默认值）
        h		弹出层高度（缺省调默认值）
    */
    function go(title,url,w,h){
        layer_show(title,url,w,h);
    }





</script>

</body>
</html>
