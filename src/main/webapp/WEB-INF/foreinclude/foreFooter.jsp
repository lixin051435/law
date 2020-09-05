<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="footer-container">
    <div class="footer-navigation pt-40 pb-20 pb-lg-40 pt-sm-30 pb-sm-10">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="address-block">
                        <div class="image">
                            <a href="${pageContext.request.contextPath}/fore/index">
                                <img src="${pageContext.request.contextPath}/assets/images/logo.png" class="img-fluid" alt="">
                            </a>
                        </div>

                        <div class="address-text">
                            <ul>
                                <li>地址: 地球</li>
                                <li>手机: (86) 00000000</li>
                                <li>传真: (86) 00000000</li>
                                <li>电子邮箱: 00000000@qq.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="widget-block">
                        <h4 class="footer-widget-title mb-sm-10">信息</h4>
                        <ul>
                            <li><a href="#">关于我们</a></li>
                            <li><a href="#">联系我们</a></li>
                            <li><a href="#">服务</a></li>
                            <li><a href="#">自助资讯</a></li>

                        </ul>
                    </div>

                </div>
                </div>

            </div>
        </div>
    </div>


    <div class="footer-copyright pt-20 pb-20">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-left mb-20 mb-md-0">
                    <div class="footer-copyright-text">
                        <p>Copyright &copy; 2020 <a href="#">admin</a></p>
                    </div>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <div class="payment-logo">
                        <img src="${pageContext.request.contextPath}/assets/images/payment.png" class="img-fluid" alt="">
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

<!--=====  End of search overlay  ======-->

<!-- scroll to top  -->
<a href="#" class="scroll-top"></a>
<!-- end of scroll to top -->

<!-- JS
============================================ -->
<!-- jQuery JS -->
<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.min.js"></script>

<!-- Popper JS -->
<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>

<!-- Bootstrap JS -->
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

<!-- Plugins JS -->
<script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>

</html>
