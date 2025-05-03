<%@page import="DAO.SanPhamDAO"%>
<%@page import="Model.SanPham"%>
<%@page import="Model.Cart"%>
<%@page import="Model.TaiKhoan"%>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Kết quả tìm kiếm</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <script src="js/jquery.min.js"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <%
        String keyword = request.getParameter("keyword");
        SanPhamDAO spd = new SanPhamDAO();
        ArrayList<SanPham> list = spd.searchSanPham(keyword);
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
    %>

    <!--header-->
    <jsp:include page="header.jsp"></jsp:include>

    <div class="container">
        <div class="products">
            <h2 class="products-in">Kết quả tìm kiếm cho: <%= keyword %></h2>
            <div class="content">
                <div class="content-top">
                    <div class="content-top-in">
                        <% if (list.isEmpty()) { %>
                            <p>Không tìm thấy sản phẩm nào.</p>
                        <% } else { %>
                            <% for (SanPham sp : list) { %>
                                <div class="col-md-3 md-col">
                                    <div class="col-md">
                                        <a href="single.jsp?MaSP=<%=sp.getMaSP()%>">
                                            <img src="images/<%=sp.getHinhAnh()%>" alt="" />
                                        </a>
                                        <div class="top-content">
                                            <center>
                                                <h5>
                                                    <a href="single.jsp?MaSP=<%=sp.getMaSP()%>"><%=sp.getTenSP()%></a>
                                                </h5>
                                            </center>
                                            <div class="white">
                                                <p class="dollar">
                                                    <span class="in-dollar"><%=sp.getGia()%></span><span>Đ</span>
                                                </p>
                                                <a href="CartController?command=plus&MaSP=<%=sp.getMaSP()%>"
                                                   class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Add To Cart</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <% } %>
                        <% } %>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>