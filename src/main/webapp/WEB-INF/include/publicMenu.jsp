<%--

  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">

    <div class="menu_dropdown bk_2">
        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe60d;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/user/list" title="用户列表">用户列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe620;</i> 律师管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/lawyer/list" title="律师列表">律师信息管理</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-comments">
            <dt><i class="Hui-iconfont">&#xe622;</i> VIP管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/vip/list" title="VIP列表">VIP列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-picture">
            <dt><i class="Hui-iconfont">&#xe613;</i> 知识案例管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/info/list" title="知识列表">知识案例列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl>
            <dt><i class="Hui-iconfont">&#xe613;</i> 提问管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/question/list?status=0" title="所有提问">所有提问</a></li>
                    <li><a href="${pageContext.request.contextPath}/question/list?status=3" title="已完成提问">已完成提问</a></li>
                    <li><a href="${pageContext.request.contextPath}/question/list?status=2" title="待回复提问">待回复提问</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-admin">
            <dt><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/admin/list" title="管理员列表">管理员列表</a></li>
                </ul>

            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

