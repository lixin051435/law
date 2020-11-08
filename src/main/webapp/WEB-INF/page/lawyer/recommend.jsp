<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp"%>
<div class="breadcrumb-area pt-15 pb-15">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">

                <div class="breadcrumb-container">
                    <nav>
                        <ul>
                            <li class="parent-page"><a href="${pageContext.request.contextPath}/fore/index">首页</a></li>
                            <li>律师推荐</li>
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
                <form action="${pageContext.request.contextPath}/lawyer/recommend" method="post" class="loginForm" >

                    <div class="login-form">
                        <h4 class="login-title">律师推荐</h4>

                        <div class="row">
                            <div class="col-md-6 col-12 mb-20">
                                <label>律师性别</label>
                                <select name="lawyerGender" style="width: 100%;height: 55%;">
                                    <option value="-1">无要求</option>
                                    <option value="男">男</option>
                                    <option value="女">女</option>

                                </select>
                            </div>
                            <div class="col-md-6 col-12 mb-20">
                                <label>收费类型</label>
                                <select name="lawyerType" style="width: 100%;height: 55%;">
                                    <option value="-1">无要求</option>
                                    <option value="0">免费</option>
                                    <option value="1">收费</option>
                                </select>
                            </div>
                            <div class="col-md-6 col-12 mb-20">
                                <label>擅长领域</label>
                                <input class="mb-0" type="text" name="lawyerField" placeholder="多个关键字用英文逗号分隔">
                            </div>
                            <div class="col-12">
                                <button type="submit" class="register-button mt-0">点我查询</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>

<!--=====  End of Login Register page content  ======-->
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        //验证不能为空
        $("form.loginForm").submit(function(){
            if(0==$("#name").val().length||0==$("#password").val().length){
                alert("账号不能为空");
                return false;
            }
            return true;
        });
    })
</script>

<%@ include file="../../foreinclude/foreFooter.jsp"%>
