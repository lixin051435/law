<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../include/publicMeta.jsp"%>

<article class="cl pd-20">
    <form action="${pageContext.request.contextPath}/user/edit" method="post" class="form form-horizontal" id="form-admin-add" target="_parent">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户编号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" readonly class="input-text" autocomplete="off" value="${user.userId}" placeholder="用户编号"  name="userId">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户姓名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${user.userRealname}" placeholder="用户姓名"  name="userRealname">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户昵称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${user.userNickname}" placeholder="用户昵称" name="userNickname">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">性别：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box" style="width:150px;">
				<select class="select" name="userGender" size="1">
                        <option value="男" <c:if test="${user.userGender == '男'}">selected</c:if> >男</option>
                        <option value="女" <c:if test="${user.userGender == '女'}">selected</c:if> >女</option>
				</select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户密码：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${user.userPassword}" placeholder="用户密码"  name="userPassword">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户地址：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${user.userAddress}" placeholder="用户地址"  name="userAddress">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户电话：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${user.userPhone}" placeholder="用户电话"  name="userPhone">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户邮箱：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${user.userEmail}" placeholder="用户邮箱"  name="userEmail">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">VIP等级：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box" style="width:150px;">
				<select class="select" name="vipLevel" size="1">
                        <option value="000" <c:if test="${user.vipLevel == '000'}">selected</c:if> >非会员</option>
                        <option value="001" <c:if test="${user.vipLevel == '001'}">selected</c:if> >普通VIP</option>
                        <option value="002" <c:if test="${user.vipLevel == '002'}">selected</c:if> >中级VIP</option>
                        <option value="003" <c:if test="${user.vipLevel == '003'}">selected</c:if> >至尊VIP</option>
				</select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</article>
<%@include file="../../include/publicFooter.jsp"%>

<script type="text/javascript">
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });


    });
</script>
</body>
</html>
