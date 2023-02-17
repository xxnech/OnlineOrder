<%--
  Created by IntelliJ IDEA.
  User: chenshuo
  Date: 2022/4/6
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>餐厅后台管理系统</title>
    <style type="text/css">
        *{padding:0px;margin:0px;}
        body{font-family:Arial, Helvetica, sans-serif;background:url(../../images/login.jpg);font-size:12px;}
        img{border:0;}
        .ur{height:37px;line-height:37px;border:0;color:#666;width:236px;margin:4px 28px;background:url(../../images/user.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
        .pw{height:37px;line-height:37px;border:0;color:#666;width:236px;margin:4px 28px;background:url(../../images/password.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
    </style>

</head>

<body>
<div class="lg">
    <form action="/login" method="POST" style="height:100vh;display: flex;align-items: center;justify-content: center;">
        <div class="panel panel-default" id="userCount" style="background-color: whitesmoke;border-radius: 10px">
            <div class="panel-body" style="padding: 50px">
                <div class="row" style="text-align: center;font-size: 20px;font-weight: bold;margin-bottom: 20px">餐厅后台登录面板</div>
                <div class="row" style="text-align: center;color: red;">${error}</div>
                <div class="row">
                    <input name="name" id="name" placeholder="用户名" value="" class="ur" />
                </div>
                <div class="row">
                    <input name="password" id="password" placeholder="密码" type="password" value="" class="pw" />
                </div>
                <div class="row" style="text-align: center;padding-top: 20px">
                    <input type="submit" value="登录" style="width: 80px;height: 30px;border-radius: 7px;background-color: #5a98de;border:none">
                </div>
            </div>
        </div>
    </form>
</div>

</body>
</html>

