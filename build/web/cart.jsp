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
        <link rel='stylesheet' type='text/css' media='screen' href='./public/css/plus.css'>
        <link href="./public/fonts/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <!-- Header  -->
            <%@include file="./include/header.jsp" %>
            
            <!-- Body -->
            <hr>
            <div class="introduce">
                <a href="HomeServlet">
                    <b class="introduce_0">Trang chủ </b>
                </a>
                <a href="">
                    <i class="fa-solid fa-angle-right"></i>
                </a>
                <a href="">
                    <b class="introduce_1">Giỏ hàng</b>
                </a> 
            </div><br>
            <div class="row ">+

                <div class="col-md-1"></div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-5">Tên sản phẩm</div>
                        <div class="col-md-2">Giá</div>
                        <div class="col-md-1">Số lượng</div>
                        <div class="col-md-2">Thành tiền</div>
                    </div>
                    <c:set var="totalPrice" value="${0}"/>
                    <c:set var="totalAmount" value="${0}"/>
                    <c:forEach items="${orderDetailSessionList}" var="orderDetailSession">                       
                        <div class="row polo" style="padding: 0px;">
                            <div class="col-md-2">
                                <a href="">
                                    <img src="assets/img/ss.jpg" alt="">
                                </a>
                            </div>
                            <div class="col-md-5" style="padding: 0px;">
                                <div class="infor" style="padding-top: 21px;">
                                    <a href="">
                                        ${orderDetailSession.productName}
                                    </a>
                                    <form action="CartServlet" method="post">
                                        <input type="hidden" name="action" value="delete"/>
                                        <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                        <input type="submit" value="Delete" />
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-2 price">
                                <div class= "row">
                                    <div class="row current_price">${Math.round(orderDetailSession.price)}</div>
                                    <!--<div class="row old_price">540.000</div>-->
                                </div>
                            </div>
                            <div class="col-md-1 number">
                                <div class="amount" style="font-weight: 700; font-size: 18px;">
                                    ${Math.round(orderDetailSession.amount)}
                                </div>
                            </div>
                            <div class="col-md-2 price">
                                <div class= "row" style="padding-left: 15px">
                                    <div class="row current_price">${Math.round(orderDetailSession.price*orderDetailSession.amount)}</div>
                                    <!--<div class="row old_price">540.000</div>-->
                                </div>
                            </div>
                        </div>
                        <c:set var="totalAmount" value="${totalAmount + orderDetailSession.amount}" />
                        <c:set var="totalPrice" value="${totalPrice + orderDetailSession.price * orderDetailSession.amount}" />
                    </c:forEach>
                </div>
                <div class="col-md-4" style="margin-left: 23px;">
                    <div class="row note">
                        <div class="row introduce_info">
                            Bạn đang có ${Math.round(totalAmount)} sản phẩm trong giỏ hàng
                        </div>
                        <hr>
                        <div class="row" style="margin-bottom: 10px; padding-right: 0;">
                            <div class="col-md-7">Tổng tiền:</div>
                            <div class="col-md-5 cost_1">${Math.round(totalPrice)}</div>
                        </div>
                        <hr>
                        <div class="row introduce_ship">Đơn hàng của bạn được freeship</div>
                    </div>
                    <div class="row note_1">
                        <a href="CheckOutServlet" class="order">Tiến hành đặt hàng</a>
                    </div>
                    <div class="row note_2">
                        <a href="HomeServlet" class="order-1">Tiếp tục mua hàng</a>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
            
            <br><br><br>
            
            <!<!-- Footer -->
            <%@include file="./include/footer.jsp" %>
        </div>
    </body>
</html>

