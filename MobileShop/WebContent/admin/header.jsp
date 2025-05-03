<%@page import="java.util.Map"%>
<%@page import="DAO.ChuyenMucDAO"%>
<%@page import="Model.ChuyenMuc"%>
<%@page import="Model.TaiKhoan"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Items"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
    .header {
        background: linear-gradient(90deg, #6ca0dc, #003566);
        color: white;
        padding: 10px 20px;
        font-family: 'Roboto', sans-serif;
        text-align: center;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        border-bottom: 2px solid #5b89c4;
    }
    .header-top {
        display: flex;
        align-items: center;
        justify-content: space-between; /* Căn giữa logo và thông tin admin */
        padding: 10px 20px;
    }
    .logo img {
        width: 150px; /* Kích thước logo */
        height: auto;
    }
    .mosAdmin {
        display: flex;
        flex-direction: column; /* Hiển thị theo chiều dọc */
        align-items: flex-end; /* Căn phải cho email và nút */
    }
    .mosAdmin span {
        color: white; /* Màu chữ trắng cho email */
        margin-bottom: 5px; /* Khoảng cách giữa email và nút */
    }
    .mosAdmin button {
        background-color: transparent; /* Nền trong suốt cho nút */
        border: 1px solid white; /* Đường viền trắng */
        color: white; /* Màu chữ trắng */
        padding: 5px 10px; /* Padding cho nút */
        cursor: pointer; /* Con trỏ chuột khi hover */
    }
    .mosAdmin button:hover {
        background-color: rgba(255, 255, 255, 0.2); /* Hiệu ứng hover */
    }
    .clear {
        clear: both;
    }
</style>
</head>
<body>
<%
TaiKhoan tk = null;
if (session.getAttribute("user") != null) {
    tk = (TaiKhoan) session.getAttribute("user");
}
%>
<div class="header">
    <div class="header-top">
        <div class="logo">
            <a href="HomeForward"><img src="admin/mos-css/img/logonen.png" alt="Logo" style="width: 100px; height: auto;"></a>
        </div>
        <div class="mosAdmin">
            <% if (tk != null) { %>
                <span><%= tk.getUserEmail() %></span> <!-- Hiển thị email -->
            <% } %>
            <button><a href="LoginController?action=Logout" style="color: white; text-decoration: none;">Đăng xuất</a></button> <!-- Đảm bảo nút có màu chữ trắng -->
        </div>
    </div>
</div>
</body>
</html>