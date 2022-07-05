<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Table of products</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="public/admin/css/sb-admin-2.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <%@include file="../include/sidebar.jsp" %>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <%@include file="../include/topbar.jsp" %>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Table of products</h1>
                            <a href="CreateProductServlet" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                    class="fas fa-download fa-sm text-white-50"></i>Add Product</a>
                        </div>
                        <!-- Content Row -->
                        <div class="row">
                            <!-- DataTales Example -->
                            <div class="card shadow mb-4 col-md-12">
                                <div class="card-header py-3">
                                    <!--<h6 class="m-0 font-weight-bold text-primary">Table of products</h6>-->
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>STT</th>
                                                    <th>Name</th>
                                                    <th>Description</th>
                                                    <th>Price</th>
                                                    <th>Old Price</th>
                                                    <th>CategoryID</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                                <th>STT</th>
                                                <th>Name</th>
                                                <th>Description</th>
                                                <th>Price</th>
                                                <th>Old Price</th>
                                                <th>CategoryID</th>
                                                <th>Edit</th>
                                                <th>Delete</th>
                                            </tfoot>
                                            <tbody>
                                            <c:set var="index" value="1" />
                                            <c:forEach items="${productList}" var="product">
                                                <tr>
                                                    <td>${index}</td>
                                                    <td>${product.name}</td>
                                                    <td>${product.description}</td>
                                                    <td>${Math.round(product.price)}</td>
                                                    <td>${Math.round(product.oldPrice)}</td> 
                                                    <td>${product.categoryId}</td>
                                                    <td>
                                                        <a href="EditProductServlet?id=${product.id}">Edit</a>
                                                    </td>
                                                    <td>
                                                        <a href="DeleteProductServlet?id=${product.id}">Delete</a>
                                                    </td>
                                                </tr>
                                                <c:set var="index" value="${index + 1}" />
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Your Website 2021</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Bootstrap core JavaScript-->
        <script src="public/admin/vendor/jquery/jquery.min.js"></script>
        <script src="public/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="public/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="public/admin/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="public/admin/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="public/admin/js/demo/chart-area-demo.js"></script>
        <script src="public/admin/js/demo/chart-pie-demo.js"></script>

    </body>

</html>