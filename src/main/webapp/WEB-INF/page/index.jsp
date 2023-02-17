
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../include/publicMeta.jsp"%>
<%@include file="../include/publicHeader.jsp"%>
<%@include file="../include/publicMenu.jsp"%>


<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/index" class="maincolor" style="text-decoration:none;color:#666666;">首页</a>
        <span class="c-999 en">&gt;</span>
        <span class="c-666">我的桌面</span>
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article" style="height:100%;width:100%;">
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default f-r" id="userCount">
                    <div class="panel-body">
                        <i class="Hui-iconfont Hui-iconfont-user"></i> 用户：${userCount}
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-default f-l" id="productCount">
                    <div class="panel-body">
                        <i class="Hui-iconfont Hui-iconfont-goods"></i> 商品：${productCount}
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default f-r" id="orderCount">
                    <div class="panel-body">
                        <i class="Hui-iconfont Hui-iconfont-quanbudingdan"></i> 订单：${orderCount}
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-default" id="sumCount">
                    <div class="panel-body">
                        <i class="Hui-iconfont Hui-iconfont-money"></i> 营业额：${turnover}
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="text-align:center;font-size:20px;font-weight:bold;">
                菜品分类销量排行
            </div>
        </div>
        <%--数据统计图--%>
        <div class="row">
            <div class="col-md-12">
                <div id="main" style="margin: auto;width: 80%;height:280px;"></div>
            </div>
        </div>
    </div>
</section>

<%@include file="../include/publicFooter.jsp"%>
<script src="../../js/echarts.js"></script>
<script>
    var myChart = echarts.init(document.getElementById('main'));
    var cateNameList = [];
    var cateCntList = [];
    <c:forEach items="${category}" var="cate">
        cateNameList.push("${cate.cName}");
        cateCntList.push(${cate.cnt});
    </c:forEach>
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                data: cateNameList,
                axisTick: {
                    alignWithLabel: true
                }
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: '销量',
                type: 'bar',
                barWidth: '60%',
                data: cateCntList
            }
        ]
    };
    myChart.setOption(option);
</script>
</body>
<style>
#userCount,#productCount,#sumCount,#orderCount {
    width:500px;
    height:130px;
    margin: 20px;
    border-radius: 10px;
    /*position: relative;*/
    display: flex;
    align-items: center;
    justify-content: center;
}
.panel-body {
    font-size: 35px;
    font-weight: bold;
}
</style>
</html>
