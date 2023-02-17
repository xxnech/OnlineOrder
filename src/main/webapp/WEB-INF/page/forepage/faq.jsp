<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../foreinclude/foreHander.jsp" %>
<div class="page-section mb-50" style="margin-top: -100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="faq-wrapper">
                    <div id="accordion">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"
                                            aria-expanded="true" aria-controls="collapseOne">
                                        有哪些配送方式? <span> <i class="fa fa-chevron-down"></i>
												<i class="fa fa-chevron-up"></i> </span>
                                    </button>
                                </h5>
                            </div>

                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                 data-parent="#accordion">
                                <div class="card-body">
                                    <p>均为人工准时配送到指定地点</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse"
                                            data-target="#collapseTwo" aria-expanded="false"
                                            aria-controls="collapseTwo">
                                        有哪些支付方式? <span> <i class="fa fa-chevron-down"></i>
												<i class="fa fa-chevron-up"></i> </span>
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                                 data-parent="#accordion">
                                <div class="card-body">
                                    <p>常见的支付方式都可以，例如：微信、支付宝、银行卡等</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse"
                                            data-target="#collapseThree" aria-expanded="false"
                                            aria-controls="collapseThree">
                                        配送人员是否安全？ <span> <i class="fa fa-chevron-down"></i>
												<i class="fa fa-chevron-up"></i> </span>
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                                 data-parent="#accordion">
                                <div class="card-body">
                                    <p>所有配送人员均穿戴防护用具，并且实施无接触配送。</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingFour">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse"
                                            data-target="#collapseFour" aria-expanded="false"
                                            aria-controls="collapseFour">
                                        如何对购买的订单进行评价? <span> <i class="fa fa-chevron-down"></i>
												<i class="fa fa-chevron-up"></i> </span>
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseFour" class="collapse" aria-labelledby="headingFour"
                                 data-parent="#accordion">
                                <div class="card-body">
                                    <p>在我的订单页面可以进行评价</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingFive">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse"
                                            data-target="#collapseFive" aria-expanded="false"
                                            aria-controls="collapseFive">
                                        下单后，长时间不配送怎么办?<span> <i class="fa fa-chevron-down"></i>
												<i class="fa fa-chevron-up"></i> </span>
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseFive" class="collapse" aria-labelledby="headingFive"
                                 data-parent="#accordion">
                                <div class="card-body">
                                    <p>请联系指定隔离点的工作人员处理问题！</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingSix">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse"
                                            data-target="#collapseSix" aria-expanded="false"
                                            aria-controls="collapseSix">
                                        菜品是否新鲜、健康？<span> <i class="fa fa-chevron-down"></i>
												<i class="fa fa-chevron-up"></i> </span>
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseSix" class="collapse" aria-labelledby="headingSix"
                                 data-parent="#accordion">
                                <div class="card-body">
                                    <p>菜品为每日按需采购，杜绝使用隔夜菜，并且厨师按照人体健康所需营养进行搭配，完全符合人身体健康所需要的食物标准</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../../foreinclude/foreFooter.jsp" %>
