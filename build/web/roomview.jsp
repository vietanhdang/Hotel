<%-- 
    Document   : roomview
    Created on : 27-Feb-2022, 18:50:35
    Author     : Cuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="head.jspf" %>

    </head>
    <body style="justify-content: center !important">

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="home.jsp">Albert</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a href="home.jsp" class="nav-link">Trang Chủ</a></li>
                        <li class="nav-item"><a href="room.jsp" class="nav-link">Phòng</a></li>
                        <li class="nav-item"><a href="resturance.jsp" class="nav-link">Nhà Hàng</a></li>
                        <li class="nav-item"><a href="aminities.jsp" class="nav-link">Tiện Nghi</a></li>
                        <li class="nav-item"><a href="about.jsp" class="nav-link">Tổng Quan</a></li>
                        <li class="nav-item"><a href="contact.jsp" class="nav-link">Liên Hệ</a></li>
                        <li class="nav-item"><a href="contact.jsp" class="nav-link">Đăng nhập̣</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->
        <div class="hero-wrap" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
                    <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                        <div class="text">
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="home.jsp">Trang Chủ</a></span> <span>Phòng</span></p>
                            <h1 class="mb-4 bread">Phòng</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section">
            <div class="container" >
                <div class="row" style="    align-items: center;
                     justify-content: center;
                     margin-left: 20px;">
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-md-12 ftco-animate">
                                <div class="single-slider owl-carousel">
                                    <div class="item">
                                        <div class="room-img" style="background-image: url(images/codien1.jpg);"></div>
                                    </div>
                                    <div class="item">
                                        <div class="room-img" style="background-image: url(images/room-5.jpg);"></div>
                                    </div>
                                    <div class="item">
                                        <div class="room-img" style="background-image: url(images/room-6.jpg);"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 room-single mt-4 mb-5 ftco-animate">
                                <h2 class="mb-4">Phòng Cổ Điển </h2>
                                <p>Phòng mang kiến trúc cổ điển thời Phục Hưng, pha đậm nét Châu Âu, tạo cảm giác hoài tưởng cho mỗi khách hàng.</p>
                                <div class="d-md-flex mt-5 mb-5">
                                    <ul class="list">
                                        <li><span>Tối đa:</span> 4 Người </li>
                                        <li><span>Diện tích:</span> 45 m2</li>
                                    </ul>
                                    <ul class="list ml-md-5">
                                        <li><span>Phong cảnh:</span> Hướng Biển</li>
                                        <li><span>Phòng tắm:</span> 1</li>
                                    </ul>
                                </div>
                                <p>Không gian cho những người thích sự lãng mạn, trang nghiêm, cổ kính. Phòng tĩnh lặng, tạo cảm giác dễ chịu cho khách hàng. Hướng nhìn ra biển, chúng ta có thể ngắm những làn sóng xô bồ cùng cảnh hoàng hôn thơ mộng.</p>
                            </div>


                            <div class="col-md-12 properties-single ftco-animate mb-5 mt-4">
                                <h4 class="mb-4">Đánh Giá</h4>
                                <div class="row">
                                    <div class="col-md-6">
                                        <form method="post" class="star-rating">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i> 100 Đánh Giá</span></p>
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i> 30 Đánh Giá</span></p>
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i> 5 Đánh Giá</span></p>
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i> 0 Đánh Giá</span></p>
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i> 0 Đánh Giá</span></p>
                                                </label>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- .col-md-8 -->

                </div>
            </div>
        </section> <!-- .section -->

        <footer class="ftco-footer ftco-bg-dark ftco-section">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">ALBERT</h2>
                            <p>Chúng tôi ở đây để tạo ra sự khác biệt, đột phá với những ý tưởng độc đáo. Sẽ là lựa chọn tốt nhất cho khách hàng.</p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4 ml-md-5">
                            <h2 class="ftco-heading-2">Liên kết hữu ích</h2>
                            <ul class="list-unstyled">

                                <li><a href="room.jsp" class="py-2 d-block">Phòng</a></li>
                                <li><a href="aminities.jsp" class="py-2 d-block">Tiện Nghi</a></li>
                                <li><a href="#" class="py-2 d-block">Thẻ Qùa Tặng</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Riêng Tư</h2>
                            <ul class="list-unstyled">

                                <li><a href="about.jsp" class="py-2 d-block">Tổng Quan</a></li>
                                <li><a href="contact.jsp" class="py-2 d-block">Liên Hệ Với Chúng Tôi</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Đặt Câu Hỏi?</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                                    <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">


                    </div>
                </div>
            </div>
        </footer>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/jquery.mb.YTPlayer.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <!-- // <script src="js/jquery.timepicker.min.js"></script> -->
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
