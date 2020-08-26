<%--

  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">

    <div class="menu_dropdown bk_2">
        <dl id="menu-member">
            <b style="margin-left: 16px">上次登陆时间：</b><br/><span style="margin-left: 45px">${lastLoginTime}</span>
            <hr style="border-color: #e5e5e5;"/>
        </dl>
        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe60d;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/customer/list" title="用户列表">用户列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe620;</i> 律师管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/product/list" title="律师列表">律师列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-comments">
            <dt><i class="Hui-iconfont">&#xe622;</i> VIP管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/review/list" title="VIP列表">VIP列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-picture">
            <dt><i class="Hui-iconfont">&#xe613;</i> 知识管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/order/list" title="知识列表">知识列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-admin">
            <dt><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/config/listRole" title="角色管理">角色管理</a></li>
                    <li><a href="/config/listPermission" title="权限管理">权限管理</a></li>
                    <li><a href="/config/listUser" title="管理员列表">管理员列表</a></li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->
