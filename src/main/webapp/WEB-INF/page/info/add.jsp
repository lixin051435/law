<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../include/publicMeta.jsp" %>

<article class="cl pd-20">
    <form action="${pageContext.request.contextPath}/info/add" method="post" class="form form-horizontal"
          id="form-admin-add" target="_parent">
        <div class="row cl" style="display: none">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>编号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="" placeholder="编号" name="infoId">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>标题：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="" placeholder="标题" name="infoTitle">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">类型：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box" style="width:150px;">
				<select class="select" name="infoType" size="1">
                        <option value="知识">知识</option>
                        <option value="案例">案例</option>
				</select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>主体：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <textarea style="height: 200px;" class="input-text" rows="10" name="infoContent"></textarea>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</article>
<%@include file="../../include/publicFooter.jsp" %>

<script type="text/javascript">
    $(function () {
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });


    });
</script>
</body>
</html>
