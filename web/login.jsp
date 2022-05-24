<%-- 
    Document   : login.jsp
    Created on : Mar 10, 2022, 9:44:10 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jspf" %>
    </head>
    <body>    
        <%@include file="header.jspf" %>
        <div class="slider-item" style="background-image:url(images/bg_2.jpg);">
            <div class="overlay"></div>
            <div class="row no-gutters slider-text align-items-center">
                <div class="col-md-12 ftco-animate">
                    <div class="text mb-5 pb-5">
                        <section class="vh-100">
                            <div class="row d-flex justify-content-center align-items-center h-100">
                                <div class="col-xl-4 col-md-6 col-xs-6 offset-xl-1">
                                    <c:if test="${action eq 'login'}">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title text-center">Đăng nhập</h5>
                                                <form  method="post" action="login?login=true">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Tên tài khoản</label>
                                                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="">
                                                        <%-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --%>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1">Mật khẩu</label>
                                                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="">
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="form-check">
                                                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
                                                            <label class="form-check-label" for="exampleCheck1">Ghi nhớ ?</label>
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Đăng nhập</button>
                                                    <a href="login?action=register" class="btn btn-primary">Đăng ký</a>
                                                </form>
                                            </div>
                                        </div>
                                    </c:if>
                                    <c:if test="${action eq 'register'}">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title text-center">Đăng ký</h5>
                                                <form method="post" action="login?register=true">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Tên tài khoản</label>
                                                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="">
                                                        <%-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --%>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1">Mật khẩu</label>
                                                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1">Nhập lại mật khẩu</label>
                                                        <input type="password" name="re_password" class="form-control" id="exampleInputPassword1" placeholder="Re_Password" required="">
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Đăng ký</button>
                                                    <a href="login?action=login" class="btn btn-primary">Đăng nhập</a>
                                                </form>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>

        <%--<%@include file="footer.jspf" %>--%>
        <%@include file="javascripts.jsp" %>
        <script>

        </script>
    </body>
</html>
