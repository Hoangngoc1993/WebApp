<%-- 
    Document   : cart
    Created on : Jun 7, 2022, 3:44:25 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
        
            <!-- search details -->
        <div class="row link_detail">
            <div class="col-md-1"></div>
            <div class="col-md-11">
                <a href="">Tìm kiếm</a>
                <i class="fa-solid fa-angle-right"></i>
                <a href="" style="color: rgb(255, 72, 0);">Đầm nữ đẹp</a>
            </div>
        </div>
        <!-- search container -->
        <div class="search__container">
            <div class="row" style="padding-top: 20px;">
                <div class="col-md-1"></div>
                <div class="col-md-1">
                    <div class="row search_list">SẢN PHẨM
                        <a href="" class="search_item">Áo Dài</a>
                        <a href="" class="search_item">Áo Khoát Nữ</a>
                        <a href="" class="search_item">Chân Váy</a>
                        <a href="" class="search_item">Cotton Nữ</a>
                        <a href="" class="search_item">Jumpsuit</a>
                        <a href="" class="search_item">Len Nữ</a>
                        <a href="" class="search_item">Nỉ Nữ</a>
                        <a href="" class="search_item">Quần Âu Nữ</a>
                        <a href="" class="search_item">Quần Jeans</a>
                        <a href="" class="search_item">Quần Soóc</a>
                        <a href="" class="search_item">Sơ Mi Nữ</a>
                        <a href="" class="search_item">Váy Đầm</a>
                        <a href="" class="search_item">Cotton Nam</a>
                        <a href="" class="search_item">Len Nam</a>
                        <a href="" class="search_item">Nỉ Nam</a>
                        <a href="" class="search_item">Quần Âu Nam</a>
                    </div>
                    <div class="row search_list">GIÁ
                        <a href="" class="search_item">Dưới 300.000</a>
                        <a href="" class="search_item">300.000 - 500.000</a>
                        <a href="" class="search_item">500.000 - 1000.000</a>
                        <a href="" class="search_item">1.000.000 - 5.000.000</a>
                        <a href="" class="search_item">Trên 5.000.000</a>
                    </div>
                    <div class="row search_list">SIZE
                        <a href="" class="search_item">S</a>
                        <a href="" class="search_item">M</a>
                        <a href="" class="search_item">L</a>
                        <a href="" class="search_item">XL</a>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="row" style="margin-bottom: 10px;">
                        <c:forEach items="${productList}" var="product">
                        <div class="col-md-4 new-clothes__product">
                            <a href="ProductDetail?id=${product.id}" class="new-clothes__link">
                                <img src="${product.image}" style="max-width: 100%;" alt="">
                            </a>
                            <div class="row new-clothes__options" style="bottom: 10%">
                                <a class="col-md-6 options-details" href="">Xem chi tiết</a>
                                <a class="col-md-6 options-buy-now" href="">Mua ngay</a>
                            </div>
                            <div class="new-clothes__sale-off">-20%</div>
                            <div class="new-clothes__new-info">MỚI</div>
                            <a href="" class="new-clothes__like-item">
                                <i class="fa-regular fa-heart"></i>
                            </a>
                            <div class="new-clothes__info">${product.name}</div>
                            <div class="row new-clothes__price">
                                <div class="col-md-6 new-clothes__discount">${Math.round(product.price)}</div>
                                <div class="col-md-6 new-clothes__old-price">${Math.round(product.oldPrice)}</div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
 
        <!<!-- Footer -->
        <%@include file="./include/footer.jsp" %>
        </div>
    </body>
</html>

