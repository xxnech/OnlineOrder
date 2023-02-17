<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../../include/publicMeta.jsp" %>
<%@include file="../../include/publicHeader.jsp" %>
<%@include file="../../include/publicMenu.jsp" %>

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> <a href="/index" class="maincolor"
                                                                    style="text-decoration:none;color:#333;">首页</a>
        <span class="c-gray en">&gt;</span>
        通知/公告管理
        <span class="c-gray en">&gt;</span>
        通知/公告列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
                   href="javascript:location.replace(location.href);" title="刷新"><i
                class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="cl pd-5 bg-1 bk-gray mt-20">
                <span class="l">
                    <a href="javascript:;" onclick="add_notice('添加通知/公告','addNotice','800','300')" class="btn btn-primary radius">
                        <i class="Hui-iconfont">&#xe600;</i> 添加通知/公告
                    </a>
                </span>
                <span class="r">共有数据：<strong>${totals}</strong> 条</span>
            </div>
            <table class="table table-border table-bordered table-bg" id="mytable">
                <thead>
                <tr>
                    <th scope="col" colspan="10">通知/公告列表</th>
                </tr>
                <tr class="text-c">
                    <th width="">ID</th>
                    <th>标题</th>
                    <th>内容</th>
                    <th>发布人</th>
                    <th>发布时间</th>
                    <th width="150">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="z">
                    <tr class="text-c">
                        <td>${z.id}</td>
                        <td>${z.title}</td>
                        <td>${z.content}</td>
                        <td>${z.customer.name}</td>
                        <td>${z.pushDate}</td>
                        <td>
                            <a title="修改" href="javascript:void(0)" onclick="add_notice('公告编辑','editNotice?id=${z.id}','800','300')"
                               class="ml-5" style="text-decoration:none">
                                <span class="label label-success radius">修改</span>
                            </a>
                            <a id="delete" deleteLink="true" title="删除" href="/notice/del?id=${z.id}"
                               class="ml-5" style="text-decoration:none">
                                <span class="label label-success radius">删除</span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </article>
        <article class="cl pd-20">
            <%@include file="../adminPage.jsp" %>
        </article>
    </div>
</section>

<%@include file="../../include/publicFooter.jsp" %>

<script type="text/javascript">

    $(function () {
        $("#delete").click(function () {
            var deleteLink = $(this).attr("deleteLink");
            console.log(deleteLink);
            if ("true" == deleteLink) {
                var confirmDelete = confirm("确认要删除");
                if (confirmDelete)
                    return true;
                return false;
            }
        });
    })

    function add_notice(title,url,w,h){
        layer_show(title,url,w,h);
    }
</script>
</body>
</html>
