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
                            <li>用户注册</li>
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
                <form action="${pageContext.request.contextPath}/user/register" method="post" class="loginForm" >

                    <div class="login-form">
                        <h4 class="login-title">用户注册</h4>

                        <div class="row">
                            <div class="col-md-6 col-12 mb-20">
                                <label>昵称</label>
                                <input class="mb-0" type="text" name="userNickname" placeholder="">
                            </div>
                            <div class="col-md-6 col-12 mb-20">
                                <label>姓名</label>
                                <input class="mb-0" type="text" name="userRealname"  placeholder="">
                            </div>
                            <div class="col-md-6 col-12 mb-20">
                                <label>性别</label>
                                <select name="userGender" style="width: 100%;height: 55%;">
                                    <option value="男">男</option>
                                    <option value="女">女</option>
                                </select>
                                <%--<input class="mb-0" type="text" name="userGender" >--%>
                            </div>
                            <div class="col-md-6 col-12 mb-20">
                                <label>密码</label>
                                <input class="mb-0" type="text" name="userPassword" placeholder="">
                            </div>
                            <div class="col-md-6 col-12 mb-20">
                                <label>邮箱</label>
                                <input class="mb-0" type="text" name="userEmail"  placeholder="">
                            </div>
                            <div class="col-md-6 col-12 mb-20">
                                <label>电话:</label>
                                <input class="mb-0" type="password"  name="userPhone"  placeholder="">
                            </div>
                            <div class="col-md-12 mb-20">
                                <label>地址:</label>
                                <input class="mb-0" type="text" name="userAddress"  placeholder="">
                            </div>
                            <div class="col-12">
                                <button type="submit" class="register-button mt-0">点我注册</button>
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
