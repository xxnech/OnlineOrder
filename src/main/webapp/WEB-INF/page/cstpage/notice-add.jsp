<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../include/publicMeta.jsp"%>

<article class="cl pd-20">
    <form action="/notice/add" method="post" class="form form-horizontal" id="form-admin-add"  target="_parent">
        <input type="hidden" name="id" value="${notice.id}">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>公告标题：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text radius" value="${notice.title}" placeholder="" id="title" name="title">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>公告内容：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="textarea" autocomplete="off" value="${notice.content}" placeholder="" id="content" name="content">
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</article>
<%@include file="../../include/publicFooter.jsp"%>

<script type="text/javascript">
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });
    });
</script>
</body>
</html>
