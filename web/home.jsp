<%-- 
    Document   : home
    Created on : May 23, 2022, 6:10:21 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>FIONA</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' type='text/css' media='screen' href='./public/css/style.css'>
        <link rel='stylesheet' type='text/css' media='screen' href='./public/css/base.css'>
        <link href="./public/fonts/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <!-- Header  -->
            <%@include file="./include/header.jsp" %>
            <!-- Image Poster -->
            <div class="row poster__wrapper">
                <div class="col-md-12 poster">
                    <button class="poster__prev"> <i class="fa-solid fa-arrow-left"></i> </button>
                    <button class="poster__next"> <i class="fa-solid fa-arrow-right"></i> </button>
                    <div class="poster__img">
                        <!-- <img src="./public/assets/img/poster/img2.jpg" style="max-width: 100%;" alt=""> -->
                    </div>
                </div>
            </div>
            <!-- Sản phẩm mới -->
            <div class="new-product">SẢN PHẨM MỚI</div>
            <div class="row new-product__list">
                <div class="col-md-4"></div>
                <div class="col-md-1 new-product__select">Tất cả</div>
                <div class="col-md-1 new-product__select active">Nữ</div>
                <div class="col-md-1 new-product__select">Nam</div>
                <div class="col-md-1 new-product__select">HOT DEAL</div>
                <div class="col-md-4"></div>
            </div>
            <div class="row new-clothes">
                <div class="row new-clothes-list">
                    <!-- Hiển thị ảnh bằng JS -->
                </div>
                <button class="new-clothes__prev"> <i class="fa-solid fa-arrow-left"></i> </button>
                <button class="new-clothes__next"> <i class="fa-solid fa-arrow-right"></i> </button>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-stuff">THỜI TRANG HÀNG HIỆU FIONA</div>
                    <div class="brand-stuff__info">
                        Thời trang nữ tại Fiona với mong muốn đem lại sự cân bằng giữa phong cách bên ngoài <br>
                        và sự thoải mái bên trong, toát lên sự gần gửi, trẻ trung cho quý khách hàng
                    </div>
                </div>
            </div>
            <!-- brand-stuff -->
            <div class="row brand-stuff__list">
                <div class="col-md-2"></div>
                <div class="col-md-2 brand-stuff__clothes">
                    <a href="" class="brand-stuff__link">
                        <img src="./public/assets/img/product/dam lead.jpg" style="width: 100%;" alt="">
                    </a>
                    <div class="row brand-stuff__sale-off">
                        <div class="col-md-6 brand-stuff__percent">-20%</div>
                        <div class="col-md-6 brand-stuff__new">MỚI</div>
                    </div>
                    <a href="" class="brand-stuff__like-item">
                        <i class="fa-regular fa-heart"></i>
                    </a>
                    <div class="row brand-stuff__options">
                        <a class="col-md-6 options-details" href="">Xem chi tiết</a>
                        <a class="col-md-6 options-buy-now" href="">Mua ngay</a>
                    </div>
                    <div class="brand-stuff__info">Đầm lead xòe sát nách, cổ tim lệch</div>
                    <div class="row brand-stuff__price">
                        <div class="col-md-6 brand-stuff__discount">1.080.000</div>
                        <div class="col-md-6 brand-stuff__old-price">1.350.000</div>
                    </div>
                </div>
                <div class="col-md-4 brand-stuff__main-clothes">
                    <a href="" class="brand-stuff__main-link">
                        <img src="./public/assets/img/product/dam maxi dang dai.jpg" style="width: 100%;" alt="">
                    </a>
                    <div class="brand-stuff__main-percent">-20%</div>
                    <div class="brand-stuff__main-new">MỚI</div>
                    <a href="" class="brand-stuff__main-like-item">
                        <i class="fa-regular fa-heart"></i>
                    </a>
                    <div class="row brand-stuff__main-options">
                        <a class="col-md-6 main-options-details" href="">Xem chi tiết</a>
                        <a class="col-md-6 main-options-buy-now" href="">Mua ngay</a>
                    </div>
                    <div class="brand-stuff__main-info">Đầm dáng dài, đính hoa trang trí</div>
                    <div class="row brand-stuff__price">
                        <div class="col-md-6 brand-stuff__main-discount">600.000</div>
                        <div class="col-md-6 brand-stuff__main-old-price">750.000</div>
                    </div>
                </div>
                <div class="col-md-2 brand-stuff__clothes">
                    <a href="" class="brand-stuff__link">
                        <img src="./public/assets/img/product/so mi co kieu Duc.jpg" style="width: 100%;" alt="">
                    </a>
                    <div class="row brand-stuff__sale-off">
                        <div class="col-md-6 brand-stuff__percent">-20%</div>
                        <div class="col-md-6 brand-stuff__new">MỚI</div>
                    </div>
                    <a href="" class="brand-stuff__like-item">
                        <i class="fa-regular fa-heart"></i>
                    </a>
                    <div class="row brand-stuff__options">
                        <a class="col-md-6 options-details" href="">Xem chi tiết</a>
                        <a class="col-md-6 options-buy-now" href="">Mua ngay</a>
                    </div>
                    <div class="brand-stuff__info">Áo sơ mi cổ kiểu Đức, nẹp áo dẹp nhăn trang trí</div>
                    <div class="row brand-stuff__price">
                        <div class="col-md-6 brand-stuff__discount">520.000</div>
                        <div class="col-md-6 brand-stuff__old-price">650.000</div>
                    </div>
                </div>
                <div class="col-md-2"></div>
                <div class="brand-stuff__button">
                    <button class="brand-stuff__prev"><i class="fa-solid fa-circle-arrow-left"></i></button>
                    <button class="brand-stuff__next"><i class="fa-solid fa-circle-arrow-right"></i></i></i></button>
                </div>
            </div>
            <!-- center image  -->
            <div class="center__image">
                <div class="center__left">
                    <img src="./public/assets/img/center-img-left.jpg" alt="">
                </div>
                <div class="center__right">
                    <img src="./public/assets/img/center-img-right.jpg" alt="">
                </div>
            </div>
            <div class="row store__image-title">
                <div class="col-md-12">HÌNH ẢNH CỬA HÀNG</div>
            </div>
            <div class="row store__introduce">
                <div class="col-md-12">
                    Cùng xem những hình ảnh mới nhất tại hệ thống cửa hàng Fiona.
                </div>
            </div>
            <!-- Store's Images  -->
            <div class="row store__img">
                <div class="col-md-2">
                    <img src="./public/assets/img/store/store-1.png" alt="">
                </div>
                <div class="col-md-2">
                    <img src="./public/assets/img/store/store-2.jpg" alt="">
                </div>
                <div class="col-md-2">
                    <img src="./public/assets/img/store/store-3.jpg" alt="">
                </div>
                <div class="col-md-2">
                    <img src="./public/assets/img/store/store-4.jpg" alt="">
                </div>
                <div class="col-md-2">
                    <img src="./public/assets/img/store/store-5.png" alt="">
                </div>
                <div class="col-md-2">
                    <img src="./public/assets/img/store/store-6.jpg" alt="" style="height: 91%;">
                </div>
            </div>
            <!<!-- Footer -->
            <%@include file="./include/footer.jsp" %>
        </div>
        <script src="./public/js/app.js"></script>
        <script src="./public/js/app-clothes.js"></script>
    </body>
</html>
