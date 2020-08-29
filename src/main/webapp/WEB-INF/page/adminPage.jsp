<%--

  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<style>
    #menu{float: right}
    #menu li {
        display: inline;
        width: 50px;
        height: 40px;
        border: 1px solid rgba(28, 9, 9, 0.34);
        margin-left: 8px;
    }
</style>
<div class="hui-list" style="margin-top:22px;">
    <ul id="menu">
        <c:if test="${!pageInfo.first}">
            <li>
                <a href="?page=${pageInfo.number - 1}">
                    <span aria-hidden="true">上一页</span>
                </a>
            </li>
        </c:if>

        <c:if test="${!pageInfo.last}">
            <li>
                <a href="?page=${pageInfo.number + 1}">
                    <span aria-hidden="true">下一页</span>
                </a>
            </li>
        </c:if>



    </ul>
</div>