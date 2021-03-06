<%-- 
    Document   : Details
    Created on : May 23, 2022, 8:51:58 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            
            <div class="row link_detail">
                <div class="col-md-1"></div>
                <div class="col-md-11">
                    <a href="HomeServlet">Trang chủ</a>
                    <i class="fa-solid fa-angle-right"></i>
<!--                    <a href="">Đầm nữ đẹp</a>
                    <i class="fa-solid fa-angle-right"></i>-->
                    <a href="" style="color: rgb(255, 72, 0);">${product.name}</a>
                </div>
            </div>
        <div class="row details__page">
            <div class="col-md-1"></div>
            <!-- Colum 1 -->
            <div class="col-md-5 main_picture">
                <img src="${product.image}" alt="">
                <div class="row detail__description">
                    ĐIỂM NỔI BẬT CỦA SẢN PHẨM: <br>
                    - Đầm thiết kế độc quyền tại thời trang FIONA. <br>
                    - Dành cho chị em dự event, gala, hội họp, tiệc nhẹ. <br>
                    - Chất liệu cao cấp giúp chiếc đầm công sở thiết kế luôn giữ phom vô cùng xinh đẹp và thanh lịch,
                    không bị phai màu sau nhiều lần sử dụng. <br>
                    - Đầm dễ dàng mix match với các màu sắc phụ kiện giày, túi xách. <br>
                    - Mua hàng online mọi lúc, mọi nơi. Trải nghiệm trực tiếp tại các showroom chính hãng và đại lý. <br>
                </div>
<!--                <img src="./public/assets/img/detail/dam xoe - co trai tim 2.jpg" alt="" style="width: 95%;">-->
            </div>
                <!-- Colum 2 -->
                <div class="col-md-5">
                    <div class="row description" style="font-size: 18px;">${product.description}</div>
                    <div class="row" style="padding-bottom: 12px;">
                        <div class="col-md-3 price__current">${Math.round(product.price)}</div>
                        <div class="col-md-3 price__old">${Math.round(product.oldPrice)}</div>
                        <div class="col-md-6"></div>
                    </div>
    <!--                <div class="row" style="padding-bottom: 12px;">
                        <div class="col-md-3 price__old">${product.oldPrice}</div>
                        <div class="col-md-1">Màu:</div>
                        <div class="col-md-2"><div class="clothes__color">Be</div></div>
                        <div class="col-md-6"></div>
                    </div>-->
                    <div class="row" style="padding-bottom: 12px;">
                        <div class="col-md-3 price__discount">Giảm ${Math.round(product.oldPrice - product.price)}</div>
                        <div class="col-md-9" style="display: inline-flex;">
                            <div class="clothes__status">Tình trạng:</div>
                            <div class="clothes__status-result">Còn hàng</div>
                        </div>
                    </div>
                    <div class="row" style="padding-bottom: 12px;">
                        <div class="col-md-3">Kích cỡ:</div>
                        <div class="col-md-1 clothes__size">XL</div>
                        <div class="col-md-1 clothes__size">L</div>
                        <div class="col-md-1 clothes__size selected">M</div>
                        <div class="col-md-1 clothes__size">S</div>
                        <div class="col-md-5"></div>
                    </div>
                    <div class="row" style="padding-bottom: 15px;">
                        <form action="OrderServlet" method="post">
                            <input type="hidden" name="productId" value="${product.id}">
                            <input type="hidden" name="productName" value="${product.name}">
                            <input type="hidden" name="price" value="${product.price}">
                            <div class="col-md-6">Số lượng (bắt buộc): 
                                <input type="text" class="clothes__number" name="amount" placeholder="0">
                            </div>
<!--                            <div class="col-md-2">
                                <button class="clothes__number-minus">-</button>
                                <input type="text" class="clothes__number" name="amount" placeholder="0">
                                    <button class="clothes__number-plus">+</button>
                            </div>-->
                            <div class="col-md-4" style="padding-top: 15px;">
                                <button type="submit" class="detail__option-card">Thêm giỏ hàng</button>
                            </div>    
                        </form>
                    </div>
                    <div class="row detail__note">
                        <div class="col-md-1"><i class="fa-solid fa-check"></i></div>
                        <div class="col-md-11">Kiểm tra trước khi thanh toán</div>
                    </div>
                    <div class="row detail__note">
                        <div class="col-md-1"><i class="fa-solid fa-check"></i></div>
                        <div class="col-md-11">1 đổi 1 trong 7 ngày với lỗi của nhà sản xuất</div>
                    </div>
                    <div class="row detail__note">
                        <div class="col-md-1"><i class="fa-solid fa-check"></i></div>
                        <div class="col-md-11">Nhiều ưu đãi hấp dẫn</div>
                    </div>
                    <div class="row detail__note">
                        <div class="col-md-1"><i class="fa-solid fa-check"></i></div>
                        <div class="col-md-11">Miễn phí giao hàng toàn quốc cho đơn trên 499K</div>
                    </div>
    <!--                <img src="./public/assets/img/detail/dam xoe - co trai tim 3.jpg" alt="" style="width: 95%;">-->
                    <img src="./public/assets/img/detail/dam xoe - co trai tim - bang size.png" style="width: 80%; padding-top: 20px;" alt="">
                    <div class="row detail__description">
                        LƯU Ý: <br>
                        Các chị em hãy luôn chú ý các quy tắc sau để chiếc đầm xòe công sở yêu thích luôn bền đẹp: <br>
                        + Lộn mặt trái khi giặt và phơi sản phẩm <br>
                        + Giặt đầm nữ với xà phòng trung tính <br>
                        + Không phơi trực tiếp dưới ánh nắng mặt trời <br>
                        + Giặt máy ở chế độ nhẹ nhàng. Không sấy, phơi khô tự nhiên. <br>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-11 detail__description">
                    Sản phẩm được sản xuất tại:
                    Công ty trách nhiệm hữu hạn Thương mại & Dịch vụ KIM PHÚ,
                    số 86 Trần Duy Hưng, Phường Trung Hoà, Quận Cầu Giấy, Thành phố Hà Nội, Việt Nam <br>
                </div>
            </div>
            
        <!<!-- Footer -->
        <%@include file="./include/footer.jsp" %>
        </div>
    </body>
</html>
