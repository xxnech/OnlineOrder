<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp"%>
<div style="margin-top: -100px">
    <c:forEach items="${categories}" var="category" varStatus="vs">
        <div class="slider-banner-sidebar-three mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="slider-banner-sidebar-three-container">
                            <div class="sidebar-container" style="border-radius: 10px">
                                <div class="section-title-three">
                                    <h3 id="${category.id}">${category.name}</h3>
                                </div>
                                <div class="sidebar">为了您的身体健康，请您务必要合理饮食</div>
                            </div>
                            <div class="slider-banner home-four-banner slider-border banner-bg banner-bg-4" style="border-radius: 10px">
                                <div class="banner-text h-100"></div>
                            </div>
                            <div class="fl-slider tab-product-slider" style="border-radius: 10px">
                                <c:forEach items="${category.products}" var="product">
                                    <div class="fl-product">
                                        <div class="image">
                                            <a href="foreDetailUI?id=${product.id}">
                                                <img src="${pageContext.request.contextPath}/${product.imageurl}" class="img-fluid" alt="">
                                                <img src="${pageContext.request.contextPath}/${product.imageurl}" class="img-fluid" alt="">
                                            </a>
                                            <span class="wishlist-icon">
												<a href="#" ><i class="icon ion-md-heart-empty"></i></a>
										 </span>
                                        </div>
                                        <div class="content">
                                            <h2 class="product-title"> <a href="foreDetailUI?id=${product.id}">${product.name}</a></h2>
                                                <%--                                        <div class="rating">--%>
                                                <%--                                            <i class="fa fa-star active"></i>--%>
                                                <%--                                            <i class="fa fa-star active"></i>--%>
                                                <%--                                            <i class="fa fa-star active"></i>--%>
                                                <%--                                            <i class="fa fa-star"></i>--%>
                                                <%--                                            <i class="fa fa-star"></i>--%>
                                                <%--                                        </div>--%>
                                            <p class="product-price">
                                            <span class="main-price discounted">
                                                $<fmt:formatNumber type="number" value="${product.price+15.1}" pattern="0.00" maxFractionDigits="2"/>
                                            </span>
                                                <span class="discounted-price">
                                                $<fmt:formatNumber type="number" value="${product.price}" pattern="0.00" maxFractionDigits="2"/>
                                            </span>
                                            </p>

                                            <div class="hover-icons">
                                                <ul>
                                                    <li><a href="#"  data-tooltip="立即购买" id="nowPayment" onclick="buyNow(${product.id},${product.price});"><i class="icon ion-md-options"></i></a></li>
                                                    <li>
                                                        <a href="#" data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="添加到购物车"
                                                           onclick="Values('${product.id}','${product.name}','${product.price}','${product.imageurl}','${product.miaoshu}');">
                                                            <i class="icon ion-md-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<div class="modal fade quick-view-modal-container" aria-hidden="true" id="quick-view-modal-container" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <input type="hidden" id="onproduct" name="onproduct" value="">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-5 col-md-6 col-xs-12 mb-xxs-25 mb-xs-25 mb-sm-25">
                        <!-- single product tabstyle one image gallery -->
                        <div class="product-image-slider fl-product-image-slider fl3-product-image-slider quickview-product-image-slider">
                            <!--product large image start -->
                            <div class="tab-content product-large-image-list fl-product-large-image-list fl3-product-large-image-list quickview-product-large-image-list" id="myTabContent2">
                                <div class="tab-pane fade show active" id="single-slide-1-q" role="tabpanel" aria-labelledby="single-slide-tab-1-q">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img id="proImg" src="${pageContext.request.contextPath}" class="img-fluid" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6 col-xs-12">
                        <div class="product-feature-details">
                            <h2 class="product-title mb-15" id="proName"></h2>
                            <h2 class="product-price mb-15">
                                <span class="main-price discounted" id="proPrice1"></span>
                                <span class="discounted-price" id="proPrice"></span>
                            </h2>
                            <p class="product-description mb-20" id="miaoshu"></p>
                            <div class="cart-buttons mb-20">
                                <div class="pro-qty mr-10">
                                    <input type="text" value="1" id="nums">
                                </div>
                                <div class="add-to-cart-btn">
                                    <a href="#" id="add_cart" class="fl-btn"><i class="fa fa-shopping-cart"></i> 添加至购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.min.js"></script>
<script type="text/javascript">
    var this_pro_price;
    var this_pro_id;
    //点击立即购买执行渲染参数
    function Values(id,name,price,imageUrl,miaoshu) {
        this_pro_price = price;
        this_pro_id = id;
        $("#proName").html(name);
        $("#miaoshu").html(miaoshu);
        $("#proPrice").html('$'+price);
        var proPrice1 = price +15;
        $("#proPrice1").html('$'+proPrice1);
        $("#proImg").attr("src",'/'+imageUrl);
    }

    //立即购买
    function buyNow(id,price){
        //ajax判断是否登陆
        $.get(
            "foreIsLogin",
            function(result) {
                if (result=="true"){ //首页立即购买默认只买一件
                    var totalPrice = 1*price;
                    location.href= "forebuyone?pid="+id+"&number=1"+"&totalPrice="+totalPrice;
                }else {  //未登录
                    alert("请先登陆!")
                }
            }
        );//登陆结束
    }

    $(document).ready(function(){
        //添加到购物车
        $("#add_cart").click(function () {
            var number = $("#nums").val();
            var totalPrice = number*this_pro_price;
            $.get(
                "foreAddCart",
                {pid:this_pro_id,number:number,totalPrice:totalPrice},
                function(data){
                    if(data=="success"){
                        alert("添加购物车成功");
                    }else{
                        alert("请先登陆！！！");
                    }
                }
            );//添加购物车结束
          });
    });
</script>
<%@ include file="../../foreinclude/foreFooter.jsp"%>

