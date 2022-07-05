<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Top header  -->
        <div class="row top__header">
            <div class="col-md-1"></div>
            <div class="col-md-2 top__header-list">
                <a href="">Tra cứu đơn hàng</a>
            </div>
            <div class="col-md-2 top__header-list">
                <a href="">Hệ thống cửa hàng</a>
            </div>
            <div class="col-md-2 top__header-list">
                <a href="">Hotline: 0981 122 811</a> 
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-1 top__header-user">
                <i class="fa-solid fa-users user-icon"></i>
                <div class="user__list">
                    <c:if test="${sessionScope.user != null}">
                        <div class="row">
                        <a href="">${sessionScope.user.username}</a>
                        </div>
                        <div class="row">
                            <a href="LogoutServlet">Đăng xuất</a>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.user == null}">
                        <div class="row">
                        <a href="LoginServlet">Đăng nhập</a>
                        </div>
                        <div class="row">
                            <a href="RegisterServlet">Đăng ký</a>
                        </div>
                    </c:if>
                </div>
            </div>
            <div class="col-md-1">
                <i class="fa-solid fa-heart like-icon"></i>
            </div>
            <div class="col-md-1 top__header-cart">
                <i class="fa-solid fa-cart-shopping cart-icon"></i>
                <div class="cart__list">
                    Giỏ hàng của bạn đang trống
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
        <!-- header  -->
        <div class="row header" style="width: 100%;">
            <div class="col-md-1"></div>
            <div class="col-md-2 header__img">
                <img src="./public/assets/img/fiona-logo.png" style="max-width: 80%;" alt="FIONA">
            </div>
            <div class="col-md-1 header__item">Hàng mới</div>
            <div class="col-md-1 header__item">Nữ
                <div class="header__item-female">
                    <div class="row">
                        <!-- Váy Đầm -->
                        <div class="col-md-4">
                            <a href="CategoryServlet?id=1" class="female__list-name">Váy Đầm</a> <br>
                            <a href="" class="female__list-clothes">Đầm Xòe</a> <br>
                            <a href="" class="female__list-clothes">Đầm Suông</a> <br>
                            <a href="" class="female__list-clothes">Đầm Ôm</a> <br>
                            <a href="" class="female__list-clothes">Đầm Dáng A</a> <br>
                            <a href="" class="female__list-clothes">Đầm Maxi</a> <br>
                            <a href="" class="female__list-clothes">Đầm Nữ Đẹp</a> <br>
                        </div>
                        <!-- Chân Váy -->
                        <div class="col-md-4">
                            <a href="" class="female__list-name">Chân Váy</a> <br>
                            <a href="" class="female__list-clothes">Chân Váy Bút Chì</a> <br>
                            <a href="" class="female__list-clothes">Chân Váy Ôm</a> <br>
                            <a href="" class="female__list-clothes">Chân Váy Xòe</a> <br>
                            <a href="" class="female__list-clothes">Chân Váy Đẹp</a> <br>
                        </div>
                        <!-- Sơ Mi Nữ -->
                        <div class="col-md-4">
                            <a href="CategoryServlet?id=2" class="female__list-name">Sơ Mi Nữ</a> <br>
                            <a href="" class="female__list-clothes">Sơ Mi Croptop</a> <br>
                            <a href="" class="female__list-clothes">Sơ Mi Suông</a> <br>
                            <a href="" class="female__list-clothes">Sơ Mi Peplum</a> <br>
                            <a href="" class="female__list-clothes">Sơ Mi Ôm</a> <br>
                            <a href="" class="female__list-clothes">Sơ Mi Đẹp</a> <br>
                        </div>
                    </div>
                    <div class="row">
                        <!-- Quần Âu Nữ -->
                        <div class="col-md-4">
                            <a href="" class="female__list-name">Quần Âu Nữ</a> <br>
                            <a href="" class="female__list-clothes">Quần Baggy</a> <br>
                            <a href="" class="female__list-clothes">Quần Ống Côn</a> <br>
                            <a href="" class="female__list-clothes">Quần Ống Đứng</a> <br>
                            <a href="" class="female__list-clothes">Quần Ống Suông</a> <br>
                            <a href="" class="female__list-clothes">Quần Âu Đẹp</a> <br>
                        </div>
                        <!-- Len Nữ -->
                        <div class="col-md-4">
                            <a href="" class="female__list-name">Len Nữ</a> <br>
                            <a href="" class="female__list-clothes">Áo Khoác Len</a> <br>
                            <a href="" class="female__list-clothes">Áo Len</a> <br>
                            <a href="" class="female__list-clothes">Đầm Len</a> <br>
                            <a href="" class="female__list-clothes">Len Nữ Đẹp</a> <br>
                            <a href="" class="female__list-clothes">Chân Váy Len</a> <br>
                        </div>
                        <!-- Cotton Nữ -->
                        <div class="col-md-4">
                            <a href="" class="female__list-name">Cotton Nữ</a> <br>
                            <a href="" class="female__list-clothes">Áo Cotton Nữ</a> <br>
                            <a href="" class="female__list-clothes">Áo Polo Nữ</a> <br>
                            <a href="" class="female__list-clothes">Đầm Cotton</a> <br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <!-- Quần Jeans -->
                            <a href="" class="female__list-name">Quần Jeans</a> <br>
                        </div>
                        <div class="col-md-4">
                            <!-- Áo Dài -->
                            <a href="" class="female__list-name">Áo Dài</a> <br>
                        </div>
                        <div class="col-md-4">
                            <!-- Áo Khoát Nữ -->
                            <a href="" class="female__list-name">Áo Khoát Nữ</a> <br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <!-- Nỉ Nữ -->
                            <a href="" class="female__list-name">Nỉ Nữ</a> <br>
                        </div>
                        <div class="col-md-4">
                            <!-- Jumpsuit Nữ -->
                            <a href="" class="female__list-name">Jumpsuit</a> <br>
                        </div>
                        <div class="col-md-4">
                            <!-- Quần Soóc -->
                            <a href="" class="female__list-name">Quần Soóc</a> <br>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-1 header__item">Nam
                <div class="header__item-male">
                    <div class="row">
                        <div class="col-md-4">
                            <a href="CategoryServlet?id=3" class="male__list-name">Nỉ Nam</a> <br>
                        </div>
                        <div class="col-md-4">
                            <a href="" class="male__list-name">Cotton Nam</a> <br>
                        </div>
                        <div class="col-md-4">
                            <a href="" class="male__list-name">Len Nam</a> <br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <a href="" class="male__list-name">Quần Âu Nam</a> <br>
                        </div>
                        <div class="col-md-4"></div>
                        <div class="col-md-4"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-1 header__item">HOT DEAL</div>
            <div class="col-md-1 header__item">Phụ kiện
                <div class="header__item-accessory">
                    <div class="row">
                        <div class="col-md-4">
                            <a href="" class="accessory__list-name">TÚI FIOSU</a> <br>
                        </div>
                        <div class="col-md-4">
                            <a href="" class="accessory__list-name">GIÀY FIOSU</a> <br>
                        </div>
                        <div class="col-md-4">
                            <a href="" class="accessory__list-name">TRANG SỨC</a> <br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <a href="" class="accessory__list-name">TẤT NAM/NỮ</a> <br>
                        </div>
                        <div class="col-md-4"></div>
                        <div class="col-md-4"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-1 header__item">Tin tức</div>
            <!-- Search -->
            <div class="col-md-3 header__search" style="padding-top: 20px;">
                <form action="ProductSearchServlet" method="GET">
                    <div class="row header__search-tab">
                        <div class="col-md-11" style="padding-right: 0;">
                            <input type="text" name="key" class="header__search-input" placeholder=" Tìm kiếm">
                        </div>
                        <div class="col-md-1" style="padding-left: 0;">
                            <button class="header__search-submit" style="height: 100%;">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>