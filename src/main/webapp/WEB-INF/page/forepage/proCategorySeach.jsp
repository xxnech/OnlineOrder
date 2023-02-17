<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp" %>
<div class="shop-page-content mb-50" style="margin-top: -100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 order-1 order-lg-2">
                <div class="shop-header mb-30">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-12 d-flex align-items-center">
                            <div class="view-mode-icons mb-xs-10">
                                <a href="#" data-target="grid"><i class="icon ion-md-apps"></i></a>
                                <a class="active" href="#" data-target="list"><i class="icon ion-ios-list"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-12 d-flex flex-column flex-sm-row justify-content-between align-items-left align-items-sm-center">
                            <div class="sort-by-dropdown d-flex align-items-center mb-xs-10">
                            </div>
                            <p class="result-show-message">搜索结果${proSize}条</p>
                        </div>
                    </div>
                </div>
                <div class="shop-product-wrap list row mb-30 no-gutters">
                    <c:forEach items="${products}" var="p">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                            <div class="fl-product shop-grid-view-product">
                                <div class="image">
                                    <a href="foreDetailUI?id=${p.id}">
                                        <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid"
                                             alt="">
                                        <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid"
                                             alt="">
                                    </a>
                                    <span class="wishlist-icon">
                                            <a href="#"><i class="icon ion-md-heart-empty"></i></a>
                                    </span>
                                </div>
                                <div class="content">
                                    <h2 class="product-title"><a href="foreDetailUI?id=${p.id}">${p.name}</a></h2>
                                    <div class="rating">
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <p class="product-price">
                                        <span class="main-price discounted">$${p.price+15}</span>
                                        <span class="discounted-price">$${p.price}</span>
                                    </p>

                                </div>
                            </div>
                            <div class="fl-product shop-list-view-product">
                                <div class="image">
                                    <a href="foreDetailUI?id=${p.id}">
                                        <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid"
                                             alt="" width="50px" height="50px">
                                        <img src="${pageContext.request.contextPath}/${p.imageurl}" class="img-fluid"
                                             alt="" width="50px" height="50px">
                                    </a>
                                </div>
                                <div class="content" style="padding-top: 55px">
                                    <h2 class="product-title"><a href="foreDetailUI?id=${p.id}">${p.name}</a></h2>
                                    <div class="rating">
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star active"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <br/>
                                    <p>${p.miaoshu}</p>
                                    <p class="product-price">
                                        <span class="main-price discounted">$${p.price+15}</span>
                                        <span class="discounted-price">$${p.price}</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../../foreinclude/foreFooter.jsp" %>
