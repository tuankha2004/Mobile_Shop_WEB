<%@ page import="DAO.DonHangDAO"%>
<%@ page import="Model.DonHang"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý đơn Hàng</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Admin MOS Template">
    <meta name="keywords" content="Admin Page">
    <meta name="author" content="Ari Rusmanto">
    <link rel="shortcut icon" href="stylesheet/img/devil-icon.png">
    <link rel="stylesheet" type="text/css" href="mos-css/mos-style.css">
</head>

<body>
    <!-- Header -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- Header -->

    <div id="wrapper">
        <!-- Menu -->
        <jsp:include page="menu.jsp"></jsp:include>
        <!-- Menu -->

        <div id="rightContent">
            <h3>Danh sách Đơn Hàng</h3>

            <table class="data">
                <tr>
                    <th class="data" width="30px">STT</th>
                    <th class="data">MaDH</th>
                    <th class="data">ID</th>
                    <th class="data">Tổng Tiền</th>
                    <th class="data">Địa Chỉ Nhận</th>
                </tr>
                <% 
                    int i = 1;
                    java.util.List<DonHang> listDonHang = DonHangDAO.getListDonHang();
                    if (listDonHang != null) {
                        for (DonHang dh : listDonHang) { 
                %>
                <tr>
                    <td class="data" width="30px"><%= i++ %></td>
                    <td class="data"><%= dh.getMaDH() %></td>
                    <td class="data"><%= dh.getID() %></td>
                    <td class="data"><%= dh.getTongTien() %></td>
                    <td class="data"><%= dh.getDiaChiNhan() %></td>
                </tr>
                <% 
                        }
                    } else { 
                %>
                <tr>
                    <td colspan="5" class="data" style="text-align: center;">Không có đơn hàng nào</td>
                </tr>
                <% 
                    } 
                %>
            </table>
        </div>

        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer -->
    </div>
</body>
</html>
