<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../include/publicMeta.jsp"%>

<article class="cl pd-20">
    <form action="${pageContext.request.contextPath}/vip/edit" method="post" class="form form-horizontal" id="form-admin-add" target="_parent">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>vip编号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" readonly class="input-text" autocomplete="off" value="${vip.vipId}" placeholder="vip编号" id="vipId" name="vipId">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>vip名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" readonly class="input-text" autocomplete="off" value="${vip.vipName}" placeholder="vip名称" id="vipName" name="vipName">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>折扣：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${vip.discount}" placeholder="折扣" id="phone" name="discount">
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
