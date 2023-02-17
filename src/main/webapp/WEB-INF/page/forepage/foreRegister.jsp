<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp" %>
<div class="page-section mb-50" style="margin-top: -100px">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-3 col-xs-12"></div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                <form action="/fore/foreRegister" method="post" class="loginForm">
                    <div class="login-form">
                        <h4 class="login-title">注册</h4>
                        <div class="row">
                            <div class="col-md-6 col-12 mb-20">
                                <label>用户名</label>
                                <input class="mb-0" type="text" name="name" id="name" placeholder="请输入用户名">
                            </div>
                            <div class="col-md-6 col-12 mb-20">
                                <label>密码</label>
                                <input class="mb-0" type="password" name="password" id="password" placeholder="请输入密码">
                            </div>
                            <div class="col-md-12 mb-20">
                                <label>地址</label>
                                <input class="mb-0" type="text" name="address" id="address" placeholder="请输入地址">
                            </div>
                            <div class="col-md-6 mb-20">
                                <label>手机</label>
                                <input class="mb-0" type="text" name="phone" id="phone" placeholder="请输入手机">
                            </div>
                            <div class="col-12">
                                <button type="submit" class="register-button mt-0">注册</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        //验证不能为空
        $("form.loginForm").submit(function () {
            if (0 == $("#name").val().length || 0 == $("#password").val().length) {
                alert("账号不能为空");
                return false;
            }
            return true;
        });
    })
</script>

<%@ include file="../../foreinclude/foreFooter.jsp" %>
