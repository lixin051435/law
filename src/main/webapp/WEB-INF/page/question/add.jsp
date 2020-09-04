<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../include/publicMeta.jsp" %>

<article class="cl pd-20">
    <form action="${pageContext.request.contextPath}/question/add" method="post" enctype="multipart/form-data"
          class="form form-horizontal" id="form-admin-add" target="_parent">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>选择用户：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box" style="width:150px;">
                        <select class="select" name="userId" size="1">
                             <c:forEach items="${userList}" var="user">
                                 <option value="${user.userId}">${user.userRealname}</option>
                             </c:forEach>
				        </select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>选择律师：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box" style="width:150px;">
                        <select class="select" name="lawyerId" size="1">
                            <c:forEach items="${lawyerList}" var="layer">
                                <option value="${layer.lawyerId}">${layer.lawyerRealname}</option>
                            </c:forEach>
				        </select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>问题描述：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <textarea style="height: 200px;" class="input-text" rows="10" name="question"></textarea>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>上传附件：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="file" class="input-text" autocomplete="off" value="" placeholder="上传附件" name="file">
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
