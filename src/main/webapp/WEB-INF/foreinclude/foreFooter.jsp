<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    LocalDate now = LocalDate.now();
    int year = now.getYear();
%>
<div class="footer-container">
    <div class="footer-copyright pt-20 pb-20">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-12 text-center text-md-left mb-20 mb-md-0">
                    <div class="footer-copyright-text">
                        <p>Copyright &copy; <%=year%> <a href="#">生命重于泰山,疫情就是命令,防控就是责任。</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="search-overlay" id="search-overlay">
    <a href="#" class="search-overlay-close" id="search-overlay-close"><i class="fa fa-times"></i></a>
    <div class="search-box">
        <input type="search" placeholder="Search entire store here">
        <button><i class="icon ion-md-search"></i></button>
    </div>
</div>
<a href="#" class="scroll-top"></a>
<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>
