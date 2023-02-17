<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp"%>

<div class="single-product-content-area mb-50" style="margin-top: 20px">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-6 col-xs-12 mb-xxs-25 mb-xs-25 mb-sm-25">
                <div class="product-image-slider fl-product-image-slider fl3-product-image-slider">
                    <div class="tab-content product-large-image-list fl-product-large-image-list fl3-product-large-image-list" id="myTabContent">
                        <div class="tab-pane fade show active" id="single-slide-1" role="tabpanel" aria-labelledby="single-slide-tab-1">
                            <div class="single-product-img img-full">
                                <img src="${pageContext.request.contextPath}/${product.imageurl}" class="img-fluid" alt="">
                                <a href="${pageContext.request.contextPath}/${product.imageurl}" class="big-image-popup"><i class="fa fa-search-plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="product-small-image-list fl-product-small-image-list fl3-product-small-image-list">
                        <div class="nav small-image-slider fl3-small-image-slider" role="tablist">
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-1" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/01.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-2" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/02.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-3" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/03.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-4" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/04.jpg" alt="">
                                </a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-5" href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/assets/images/single-product-slider/05.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!--product small image slider End-->
                </div>
                <!-- end of single product tabstyle one image gallery -->
            </div>

            <div class="col-lg-6 col-md-6 col-xs-12">
                <!-- product view description -->
                <div class="product-feature-details">
                    <h2 class="product-title mb-15">${product.name}</h2>

                    <div class="rating d-inline-block mb-15">
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star"></i>
                    </div>

                    <p class="d-inline-block ml-10 review-link">
                        <a href="#">
                            <c:if test="${rs==null}">(0 customer review)</c:if>
                            <c:if test="${rs!=null}">(${rs} customer review)</c:if>
                        </a>
                    </p>

                    <h2 class="product-price mb-0">
                        <span class="main-price discounted">$${product.price+15}</span>
                        <span class="discounted-price"> $${product.price}</span>
                    </h2>

                    <p class="product-description mb-20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所有食品已严格把关，无任何食品安全问题，价格公道，食品美味，
                        值得拥有，你还在等什么，感觉给自己点上一份香喷喷的美食犒劳自己吧！
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;卖家承诺，如果有任何食品安全问题，无条件全额退款
                    </p>

                    <div class="cart-buttons mb-20">
                        <span class="quantity-title mr-10">数量: </span>
                        <div class="pro-qty mb-20">
                            <input type="text" value="1" id="num">
                        </div>
                        <div class="row">
                            <div class="add-to-cart-btn d-block" style="padding-left:20px">
                                <a href="#" class="fl-btn" id="add_cart"><i class="fa fa-shopping-cart"></i> 添加至购物车</a>
                            </div>
                            <div class="add-to-cart-btn d-block" style="padding-left:10px">
                                <a href="javascript:;" class="fl-btn" id="nowPayment"> <i class="icon ion-md-options"></i> 立即购买</a>
                            </div>
                        </div>
                    </div>

<%--                    <div class="category-list-container mb-20">--%>
<%--                        <span>商家: </span>--%>
<%--                        <ul>--%>
<%--                            <li><a href="shop-left-sidebar.html">${product.user.name}</a>,</li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="product-description-review-area mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="tab-slider-wrapper product-description-review-container">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="description-tab" data-toggle="tab" href="#product-description" role="tab"
                               aria-selected="true">描述</a>
                            <a class="nav-item nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab"
                               aria-selected="false">评价</a>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="product-description" role="tabpanel" aria-labelledby="description-tab">
                            <div class="product-description">
                                <p>商品描述：${product.miaoshu}</p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                        <c:if test="${reviews.size()==0}">
                            <div class="product-ratting-wrap">
                                <div class="rattings-wrapper">
                                        <div class="sin-rattings">
                                            <div class="ratting-author">
                                                <h3>该商品暂无评论！</h3>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${reviews.size()>0}">
                            <div class="product-ratting-wrap">
                                <c:forEach items="${reviews}" var="review">
                                <div class="rattings-wrapper">
                                    <div class="sin-rattings">
                                        <div class="ratting-author">
                                            <h3>${review.customer.name} - <fmt:formatDate value="${review.createtime}" pattern='yyyy-MM-dd HH:mm:ss'/></h3>
                                        </div>
                                        <p>${review.content}</p>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="related-product-slider-area mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>为您推荐</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="fl-slider tab-product-slider">
                    <c:forEach items="${fivePro}" var="pf">
                    <div class="fl-product">
                        <div class="image">
                            <a href="foreDetailUI?id=${pf.id}">
                                <img src="${pageContext.request.contextPath}/${pf.imageurl}" class="img-fluid" alt="">
                                <img src="${pageContext.request.contextPath}/${pf.imageurl}" class="img-fluid" alt="">
                            </a>
                            <span class="wishlist-icon">
                                        <a href="#" ><i class="icon ion-md-heart-empty"></i></a>
                            </span>
                        </div>
                        <div class="content">
                            <h2 class="product-title"> <a href="foreDetailUI?id=${pf.id}">${pf.name}</a></h2>
                            <div class="rating">
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p class="product-price">
                                <span class="main-price discounted">$${pf.price+15.1}</span>
                                <span class="discounted-price">$${pf.price}</span>
                            </p>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"  id="myModal" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!--登陆框头部-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    ×
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    欢迎登陆！
                </h4>
            </div>
            <!--登陆框中间部分(from表单)-->
            <div class="modal-body">
               <%-- <form class="form-horizontal">--%>
                   <div class="loginErrorMessageDiv">
                       <div class="alert alert-danger" >
                           <span class="errorMessage"></span>
                       </div>
                   </div>
                    <!--用户框-->
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="name" id="name" placeholder="username" required="required">
                        </div>
                    </div>
                    <!--密码框-->
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label" >密码</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="password" name="password" placeholder="password" required="required">
                        </div>
                    </div>
                    <!--登陆按钮-->
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="button" class="btn btn-default" id="modalLogin">登录</button>
                        </div>
                    </div>
                <%--</form>--%>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("div.loginErrorMessageDiv").hide();
        var number;
        //立即购买按钮
        $("#nowPayment").click(function(){
            //ajax判断是否登陆
            $.get(
                "foreIsLogin",
                function(result) {
                    if (result=="true"){ //
                        number = $("#num").val();
                        var totalPrice = number*${product.price};
                        location.href= "forebuyone?pid=${product.id}&number="+number+"&totalPrice="+totalPrice;
                    }else {  //未登录
                        $('#myModal').modal('show')
                    }
                }
            );//登陆结束
        });
        //添加到购物车
        $("#add_cart").click(function () {
            $.get(
                "foreIsLogin",
                function(result) {
                    if (result=="true"){ //已登录则加入购物车
                        //ajax添加到购物车
                        number = $("#num").val();
                        var totalPrice = number*${product.price};
                        $.get(
                            "foreAddCart",
                            {pid:${product.id},number:number,totalPrice:totalPrice},
                            function(data){
                                if(data=="success"){
                                    alert("添加购物车成功");
                                    $("body").Huimodalalert({
                                        content: '添加购物车成功',
                                        speed: 1000
                                    })
                                }else{
                                    alert("添加购物车失败");
                                }
                            }
                        );//添加购物车结束
                    }else {  //未登录
                        $('#myModal').modal('show')
                    }
                }
            );//登陆结束
        });
        //模态窗口登陆
        $("#modalLogin").click(function () {
            var name = $("#name").val();
            var password = $("#password").val();

            if(0==name.length||0==password.length){
                $("span.errorMessage").html("请输入账号密码");
                $("div.loginErrorMessageDiv").show();
                return false;
            }

            $.get(
                "foreMtLogin",
                {name:name,password:password},
                function (result) {
                    if("true"==result){
                        location.reload();
                    }else{
                        $("span.errorMessage").html("账号或密码错误");
                        $("div.loginErrorMessageDiv").show();
                    }
                }
            );
        });

    });
</script>
<%@ include file="../../foreinclude/foreFooter.jsp"%>
