<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>网上订餐系统</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico">
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/ionicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/plugins.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/helper.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body class="grey-bg">
<div class="header-container header-container-home-4 header-sticky white-bg">
    <div class="header-top pt-15 pb-15">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="header-top-text text-center text-lg-left mb-0 mb-md-15 mb-sm-15">
                        <p><i class="icon ion-ios-megaphone"></i>&nbsp;&nbsp;&nbsp;下单后，由工作人员提供无接触配送，投诉电话 <span class="support-no">: xxxx-xxxxxx</span></p>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="header-top-dropdown d-flex justify-content-center justify-content-lg-end">
                        <div class="single-dropdown">
                            <a href="/fore/foreIndex" id="changeLanguage"><span id="languageName">首页</span></a>
                        </div>
                        <span class="separator pl-15 pr-15">|</span>
                        <c:if test="${cst!=null}">
                            <div class="single-dropdown">
                                <a href="#"><span>欢迎您，${cst.name}
                                     <c:if test="${cst.status==1}">(会员)</c:if>
                                     <c:if test="${cst.status==0}">(普通用户)</c:if>
                                    </span>
                                </a>
                            </div>
                            <span class="separator pl-15 pr-15">|</span>
                            <div class="single-dropdown">
                                <a href="/fore/foreCstLoginOut"><span>退出</span></a>
                            </div>
                        </c:if>
                        <c:if test="${cst==null}">
                            <div class="single-dropdown">
                                <a href="foreLoginUI"><span>登陆</span></a>
                            </div>
                            <span class="separator pl-15 pr-15">|</span>
                            <div class="single-dropdown">
                                <a href="foreRegisterUI"><span>注册</span></a>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="navigation-menu navigation-menu-home-4">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-7">
<%--                    <div class="sticky-logo">--%>
<%--                        <a href="/fore/foreIndex">--%>
<%--                            <img src="${pageContext.request.contextPath}/assets/images/logo.png" class="img-fluid" alt="">--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="search-icon-menutop-tablet search-icon-menutop-tablet-home-4 text-right d-inline-block d-lg-none">--%>
<%--                        <a href="#" id="search-overlay-active-button">--%>
<%--                            <i class="icon ion-md-search"></i>--%>
<%--                        </a>--%>
<%--                    </div>--%>
                    <div class="main-menu">
                        <nav>
                            <ul>
                                <li><a class="active" href="/fore/foreIndex">首页</a></li>
                                <li class="menu-item-has-children"><a href="#">美食分类</a>
                                    <ul class="sub-menu">
                                        <c:forEach items="${categories}" var="category">
                                            <li><a href="foreFindCategory?id=${category.id}" class="fruit">${category.name}</a></li>
                                        </c:forEach>
                                    </ul>
                                </li>
                                <li><a href="/fore/forebought">我的订单</a></li>
                                <li><a href="/fore/foreNotice">通知公告</a></li>
                                <li><a href="/fore/faq">常见问题</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-12 col-lg-3">
                    <div class="navigation-search d-none d-lg-block">
                        <form method="post" action="/fore/foreNameLike">
                            <input type="search" placeholder="请输入菜品名称" name="pName">
                            <button type="submit"><i class="icon ion-md-search"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-12 d-block d-lg-none">
                    <div class="mobile-menu"></div>
                </div>
                <div class="col-12 col-lg-2">
                    <div class="minicart-section minicart-section-home-4">
                        <a href="/fore/forecart" id="cart-icon">
                            <i style="font-size:18px" class="icon ion-md-cart align-middle"></i><span style="padding: 0 5px 0 5px;">购物车</span><i class="fa fa-angle-down"></i>
<%--                            <p>点击查看</p>--%>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
