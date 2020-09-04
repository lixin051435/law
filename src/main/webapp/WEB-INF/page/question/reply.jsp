<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../include/publicMeta.jsp" %>



<article class="cl pd-20">
    <form action="${pageContext.request.contextPath}/question/reply" method="post" enctype="multipart/form-data"
          class="form form-horizontal" id="form-admin-add" target="_parent">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>问题编号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" readonly class="input-text" autocomplete="off" value="${question.questionId}" placeholder="编号" name="questionId">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box" style="width:150px;">
                        <select disabled="true" class="select" name="userId" size="1">
                             <c:forEach items="${userList}" var="user">
                                 <option value="${user.userId}" <c:if test="${question.userId == user.userId}">selected</c:if> >${user.userRealname}</option>
                             </c:forEach>
				        </select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>回答律师：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box" style="width:150px;">
                        <select disabled="true" class="select" name="lawyerId" size="1">
                            <c:forEach items="${lawyerList}" var="layer">
                                <option value="${layer.lawyerId}" <c:if test="${question.lawyerId == layer.lawyerId}">selected</c:if> >${layer.lawyerRealname}</option>
                            </c:forEach>
				        </select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>问题描述：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <textarea style="height: 200px;" class="input-text" disabled="true" rows="10" name="question">${question.question}</textarea>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>提问附件：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <a href="javascript:download('${pageContext.request.contextPath}/${question.questionAppendix}');">点我下载</a>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>问题解答：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <textarea style="height: 200px;" class="input-text" rows="10" name="answer">${question.answer}</textarea>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>回答附件：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="file" class="input-text" autocomplete="off" value="" placeholder="回答附件" name="file">
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

    function download(url){
        // alert(url);
        window.open(url);
    }
</script>
</body>
</html>
