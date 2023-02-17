<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../../foreinclude/foreHander.jsp"%>
<div class="page-section mb-50" style="margin-top: -100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="faq-wrapper">
                    <div id="accordion">
                        <c:forEach items="${notice}" var="item">
                            <div class="card">
                                <div class="card-header" id="heading${item.id}">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse${item.id}"
                                                aria-expanded="false" aria-controls="collapse${item.id}">
                                            ${item.title} - ${item.pushDate} <span> <i class="fa fa-chevron-down"></i>
												<i class="fa fa-chevron-up"></i> </span>
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapse${item.id}" class="collapse" aria-labelledby="heading${item.id}"
                                     data-parent="#accordion">
                                    <div class="card-body">
                                        <p>${item.content}</p>
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
<!--====  End of My Account page content  ====-->
<%@ include file="../../foreinclude/foreFooter.jsp"%>
