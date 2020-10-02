<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp" %>
<div class="breadcrumb-area pt-15 pb-15">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">

                <div class="breadcrumb-container">
                    <nav>
                        <ul>
                            <li class="parent-page"><a href="${pageContext.request.contextPath}/fore/index">首页</a></li>
                            <li>我的提问</li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="page-section mb-50">
    <div class="container">

        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-3 col-xs-12"></div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                <form action="${pageContext.request.contextPath}/question/userAdd" method="post" class="loginForm"
                      enctype="multipart/form-data">

                    <div class="login-form">
                        <div class="row">
                            <div class="col-md-6 col-12 mb-20">
                                <label>问题编号</label>
                                <input class="mb-0" type="text" readonly name="questionId"
                                       value="${question.questionId}">
                            </div>
                            <div class="col-md-6 col-12 mb-20">
                                <label>回答律师</label>
                                <c:forEach items="${lawyerList}" var="layer">
                                    <c:if test="${question.lawyerId == layer.lawyerId}">
                                        <input class="mb-0" type="text" readonly value="${layer.lawyerRealname}">
                                    </c:if>
                                </c:forEach>
                            </div>
                            <div class="col-md-12 col-12 mb-20">
                                <label>问题描述</label>
                                <div>
                                <textarea readonly style="width: 100%;height: 200px;" class="input-text" rows="10"
                                          name="question">${question.question}</textarea>
                                </div>
                            </div>
                            <div class="col-md-12 col-12 mb-20">
                                <label>提问附件：<a href="${pageContext.request.contextPath}/${question.questionAppendix}">点我查看</a>
                                </label>
                            </div>
                            <div class="col-md-12 col-12 mb-20">
                                <label>律师回答</label>
                                <div>
                                <textarea readonly style="width: 100%;height: 200px;" class="input-text" rows="10"
                                          name="question">${question.answer}</textarea>
                                </div>
                            </div>
                            <div class="col-md-12 col-12 mb-20">
                                <label>回答附件:<a
                                        href="${pageContext.request.contextPath}/${question.answerAppendix}">点我查看</a></label>
                            </div>
                        </div>

                </form>

            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>

<%@ include file="../../foreinclude/foreFooter.jsp" %>
