<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../include/publicMeta.jsp"%>

<article class="cl pd-20">
    <form action="${pageContext.request.contextPath}/lawyer/edit" method="post" enctype="multipart/form-data" class="form form-horizontal" id="form-admin-add" target="_parent">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>律师编号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" readonly class="input-text" autocomplete="off" value="${lawyer.lawyerId}" placeholder="律师编号"  name="lawyerId">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>律师姓名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${lawyer.lawyerRealname}" placeholder="律师姓名"  name="lawyerRealname">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>律师昵称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${lawyer.lawyerNickname}" placeholder="律师昵称"  name="lawyerNickname">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">律师性别：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box" style="width:150px;">
				<select class="select" name="lawyerGender" size="1">
                        <option value="男" <c:if test="${lawyer.lawyerGender == '男'}">selected</c:if> >男</option>
                        <option value="女" <c:if test="${lawyer.lawyerGender == '女'}">selected</c:if> >女</option>
				</select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>律师密码：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${lawyer.lawyerPassword}" placeholder="律师密码"  name="lawyerPassword">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>擅长领域：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${lawyer.lawyerField}" placeholder="擅长领域"  name="lawyerField">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>律师标题：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${lawyer.lawyerTitle}" placeholder="律师标题"  name="lawyerTitle">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>细节概述：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${lawyer.lawyerDescription}" placeholder="细节概述"  name="lawyerDescription">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">律师类型：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box" style="width:150px;">
				<select class="select" name="lawyerType" size="1">
                        <option value="0" <c:if test="${lawyer.lawyerType == '0'}">selected</c:if> >免费</option>
                        <option value="1" <c:if test="${lawyer.lawyerType == '1'}">selected</c:if> >收费</option>
				</select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>咨询费用：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" value="${lawyer.lawerExpense}" placeholder="咨询费用"  name="lawerExpense">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>律师头像：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="file" class="input-text" autocomplete="off" value="" placeholder="律师头像"  name="file">
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
