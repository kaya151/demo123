<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <#--<link rel="stylesheet" href="/static/bootstrap/bootstrap.min.css">-->
    <#--<script src="/static/bootstrap/jquery.min.js"></script>-->
    <script src="/static/bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <link rel="stylesheet" href="/static/css/normalize.min.css">
    <link rel="stylesheet" href="/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/css/animate.css">
    <link rel="stylesheet" href="/static/css/templatemo-misc.css">
    <link rel="stylesheet" href="/static/css/templatemo-style.css">

    <script src="/static/js/modernizr-2.6.2.min.js"></script>
    <style>
        .carousel {
            width:800px; /* Or try to use important */
            height:500px;
        }
    </style>
</head>
<body>
<header class="site-header">
    <div class="main-header">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-8">
                    <div class="logo">
                        <h1><a href="#"><img src="/static/images/logo.png"></a></h1>
                    </div> <!-- /.logo -->
                </div> <!-- /.col-md-4 -->
                <div class="col-md-8 col-sm-6 col-xs-4">
                    <div class="main-menu" style="float: left;">
                        <#--<a href="#" class="toggle-menu">
                            <i class="fa fa-bars"></i>
                        </a>-->
                        <img src="/static/images/d1.jpg" style="width: 800px;height: 80px;">
                        <#--<ul class="menu">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Catalogs</a></li>
                            <li><a href="#">FAQs</a></li>
                            <li><a href="#">Policies</a></li>
                            <li><a href="#">About</a></li>
                        </ul>-->
                    </div> <!-- /.main-menu &ndash;&gt;-->
                </div>  <!-- /.col-md-8 -->
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </div> <!-- /.main-header -->
    <div class="main-nav">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-7">
                    <div class="list-menu">
                        <ul>
                            <li><a href="/Reception/index">首页</a></li>
                            <li><a href="product-detail.html">关于我们</a></li>
                            <li><a href="contact.html">招聘</a></li>
                        </ul>
                    </div> <!-- /.list-menu -->
                </div> <!-- /.col-md-6 -->
                <div class="col-md-6 col-sm-5">
                    <#--<div class="notification">
                        <span>Free Shipping on any order above $50</span>
                    </div>-->
                </div> <!-- /.col-md-6 -->
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </div> <!-- /.main-nav -->
</header>
<div class="content-section">
    <div class="container">
        <div class="row" style="float: left;margin-right: 20px;margin-top: 14px;">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- 指示器 -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>
                <!-- 轮播图片及说明文字 -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="/static/images/d1.jpg" alt="图片1">
                    </div>
                    <div class="item">
                        <img src="/static/images/d4.jpg" alt="图片2">
                    </div>
                    <div class="item">
                        <img src="/static/images/d5.jpg" alt="图片3">
                    </div>
                </div>

                <!-- 控制按钮：左右切换 -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>

        <div class="row" style="float: left;">
            <ul class="list-group" style="width: 350px;">
                <li class="list-group-item"><a>免费域名注册</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>免费 Window 空间托管</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>图像的数量</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>24*7 支持</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>每年更新成本</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>免费域名注册</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>免费 Window 空间托管</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>图像的数量</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>24*7 支持</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>每年更新成本</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>免费域名注册</a><span style="float: right;">2019:02:11</span></li>
                <li class="list-group-item"><a>免费 Window 空间托管</a><span style="float: right;">2019:02:11</span></li>
            </ul>
        </div>
    </div>
</div>

<div class="content-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 section-title">
                <h2>新闻展示</h2>
            </div> <!-- /.section -->
        </div> <!-- /.row -->
        <#--<div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="product-item-vote">
                    <div class="product-thumb">
                        <img src="images/products/1.jpg" alt="">
                    </div> <!-- /.product-thum &ndash;&gt;
                    <div class="product-content">
                        <h5><a href="#">Name of Shirt</a></h5>
                        <span class="tagline">By: Catherine</span>
                        <ul class="progess-bars">
                            <li>
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"></div>
                                    <span>4<i class="fa fa-heart"></i></span>
                                </div>
                            </li>
                            <li>
                                <div class="progress">
                                    <div class="progress-bar comments" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
                                    <span class="comments">6<i class="fa fa-heart"></i></span>
                                </div>
                            </li>
                        </ul>
                    </div> <!-- /.product-content &ndash;&gt;
                </div> <!-- /.product-item-vote &ndash;&gt;
            </div> <!-- /.col-md-3 &ndash;&gt;
            <div class="col-md-3 col-sm-6">
                <div class="product-item-vote">
                    <div class="product-thumb">
                        <img src="images/products/2.jpg" alt="">
                    </div> <!-- /.product-thum &ndash;&gt;
                    <div class="product-content">
                        <h5><a href="#">Name of Shirt</a></h5>
                        <span class="tagline">By: Rebecca</span>
                        <ul class="progess-bars">
                            <li>
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"></div>
                                    <span>4<i class="fa fa-heart"></i></span>
                                </div>
                            </li>
                            <li>
                                <div class="progress">
                                    <div class="progress-bar comments" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
                                    <span class="comments">6<i class="fa fa-heart"></i></span>
                                </div>
                            </li>
                        </ul>
                    </div> <!-- /.product-content &ndash;&gt;
                </div> <!-- /.product-item-vote &ndash;&gt;
            </div> <!-- /.col-md-3 &ndash;&gt;
            <div class="col-md-3 col-sm-6">
                <div class="product-item-vote">
                    <div class="product-thumb">
                        <img src="images/products/3.jpg" alt="">
                    </div> <!-- /.product-thum &ndash;&gt;
                    <div class="product-content">
                        <h5><a href="#">Name of Shirt</a></h5>
                        <span class="tagline">By: Catherine</span>
                        <ul class="progess-bars">
                            <li>
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"></div>
                                    <span>4<i class="fa fa-heart"></i></span>
                                </div>
                            </li>
                            <li>
                                <div class="progress">
                                    <div class="progress-bar comments" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
                                    <span class="comments">6<i class="fa fa-heart"></i></span>
                                </div>
                            </li>
                        </ul>
                    </div> <!-- /.product-content &ndash;&gt;
                </div> <!-- /.product-item-vote &ndash;&gt;
            </div> <!-- /.col-md-3 &ndash;&gt;
            <div class="col-md-3 col-sm-6">
                <div class="product-item-vote">
                    <div class="product-thumb">
                        <img src="images/products/4.jpg" alt="">
                    </div> <!-- /.product-thum &ndash;&gt;
                    <div class="product-content">
                        <h5><a href="#">Name of Shirt</a></h5>
                        <span class="tagline">By: Rebecca</span>
                        <ul class="progess-bars">
                            <li>
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"></div>
                                    <span>4<i class="fa fa-heart"></i></span>
                                </div>
                            </li>
                            <li>
                                <div class="progress">
                                    <div class="progress-bar comments" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
                                    <span class="comments">6<i class="fa fa-heart"></i></span>
                                </div>
                            </li>
                        </ul>
                    </div> <!-- /.product-content &ndash;&gt;
                </div> <!-- /.product-item-vote &ndash;&gt;
            </div> <!-- /.col-md-3 &ndash;&gt;
        </div>--> <!-- /.row -->
    </div> <!-- /.container -->
</div> <!-- /.content-section -->
<footer class="site-footer">
    <#--<div class="our-partner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    &lt;#&ndash;<div class="customNavigation">
                        <a class="btn prev"><i class="fa fa-angle-left"></i></a>
                        <a class="btn next"><i class="fa fa-angle-right"></i></a>
                    </div>&ndash;&gt;
                    &lt;#&ndash;<div id="owl-demo" class="owl-carousel">
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-1.jpg" alt=""></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-2.jpg" alt=""></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-1.jpg" alt=""></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-2.jpg" alt=""></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-1.jpg" alt=""></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-2.jpg" alt=""></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-1.jpg" alt=""></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-2.jpg" alt=""></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-1.jpg" alt=""></a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/tm-170x80-2.jpg" alt=""></a>
                        </div>
                    </div> <!-- /#owl-demo &ndash;&gt;&ndash;&gt;-->
                </div> <!-- /.col-md-12 &ndash;&gt;-->
            </div> <!-- /.row &ndash;&gt;-->
        </div> <!-- /.container &ndash;&gt;-->
    </div> <!-- /.our-partner &ndash;&gt;-->-->

    <div class="main-footer">
        <div class="container">
            <div class="footer-widget">
                <h3 class="widget-title">友情链接</h3>
            <div>
                <table>
                    <tr class="follow-us">
                        <td>11</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td><td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                        <td>112</td>
                    </tr>

                </table>
            </div>
            <#--<div class="row">
                <div class="col-md-3">
                    <div class="footer-widget">
                        <h3 class="widget-title">About Us</h3>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, debitis recusandae.
                        <ul class="follow-us">
                            <li><a href="#"><i class="fa fa-facebook"></i>Facebook</a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i>Twitter</a></li>
                        </ul> <!-- /.follow-us &ndash;&gt;&ndash;&gt;
                    </div> <!-- /.footer-widget &ndash;&gt;&ndash;&gt;
                </div> <!-- /.col-md-3 &ndash;&gt;&ndash;&gt;
                <div class="col-md-3">
                    <div class="footer-widget">
                        <h3 class="widget-title">Why Choose Us?</h3>
                        Kool Store is free responsive eCommerce template provided by templatemo website. You can use this layout for any website.
                        <br><br>Tempore cum mollitia eveniet laboriosam corporis voluptas earum voluptate. Lorem ipsum dolor sit amet.
                        <br><br>Credit goes to <a rel="nofollow" href="#">Unsplash</a> for all images.
                    </div> <!-- /.footer-widget &ndash;&gt;&ndash;&gt;
                </div> <!-- /.col-md-3 &ndash;&gt;&ndash;&gt;
                <div class="col-md-2">
                    <div class="footer-widget">
                        <h3 class="widget-title">Useful Links</h3>
                        <ul>
                            <li><a href="#">Our Shop</a></li>
                            <li><a href="#">Partners</a></li>
                            <li><a href="#">Gift Cards</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div> <!-- /.footer-widget &ndash;&gt;&ndash;&gt;
                </div> <!-- /.col-md-2 &ndash;&gt;&ndash;&gt;
                <div class="col-md-4">
                    <div class="footer-widget">
                        <h3 class="widget-title">Our Newsletter</h3>
                        <div class="newsletter">
                            <form action="#" method="get">
                                <p>Sign up for our regular updates to know when new products are released.</p>
                                <input type="text" title="Email" name="email" placeholder="Your Email Here">
                                <input type="submit" class="s-button" value="Submit" name="Submit">
                            </form>
                        </div> <!-- /.newsletter &ndash;&gt;&ndash;&gt;
                    </div> <!-- /.footer-widget &ndash;&gt;&ndash;&gt;
                </div> <!-- /.col-md-4 &ndash;&gt;&ndash;&gt;
            </div> <!-- /.row &ndash;&gt;&ndash;&gt; &ndash;&gt;-->
        </div> <!-- /.container &ndash;&gt;-->
    </div> <!-- /.main-footer -->
    <div class="bottom-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <span>Copyright &copy; 2084  <a href="/Reception/index" target="_blank" title="模板之家">新闻网站</a> <#--- Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>--></span>

                </div> <!-- /.col-md-12 -->
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </div> <!-- /.bottom-footer -->
</footer> <!-- /.site-footer -->

<script src="/static/js/vendor/jquery-1.10.1.min.js"></script>
<script>window.jQuery || document.write('<script src="/static/js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
<script src="/static/js/jquery.easing-1.3.js"></script>
<script src="/static/js/bootstrap.js"></script>
<script src="/static/js/plugins.js"></script>
<script src="/static/js/main.js"></script>
</body>
</html>