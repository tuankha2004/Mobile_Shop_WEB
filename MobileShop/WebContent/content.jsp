<%@page import="java.util.List"%>
<%@page import="Model.SanPham"%>
<%@page import="DAO.SanPhamDAO"%>
<%@page import="javax.servlet.jsp.jstl.core.*"%>
<%@ page import="DAO.slidebannerLogoDAO" %>
<%@ page import="Model.slidebannerLogo" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <title>Trang sản phẩm</title>

   <style>
       /* CSS cho phân trang */
       .start {
           list-style: none;
           padding: 0;
           display: flex;
           justify-content: center;
           margin-top: 20px;
       }
       .start li {
           margin: 0 5px;
       }
       .start a {
           text-decoration: none;
           padding: 8px 12px;
           border: 1px solid #ccc;
           border-radius: 4px;
       }
       .start a.active {
           background-color: #007bff;
           color: white;
       }
   </style>
</head>
<body style="background-color: white;">
   <div class="container">
       <div class="content">
           <!-- Phần đặc sắc -->
           <div class="content-top">
               <h3 class="future">TẤT CẢ</h3>
               <div class="content-top-in">
                   <%
                       SanPhamDAO spd = new SanPhamDAO();
                       List<SanPham> products = spd.getListSanPham(); // Lấy danh sách sản phẩm
                      
                       // Phân trang
                       int itemsPerPage = 12; // Số sản phẩm trên mỗi trang
                       int totalItems = products.size(); // Tổng số sản phẩm
                       int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage);
                       int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
                       int startItem = (currentPage - 1) * itemsPerPage;
                       // Lấy sản phẩm cho trang hiện tại
                       List<SanPham> paginatedProducts = products.subList(startItem, Math.min(startItem + itemsPerPage, totalItems));
                       for (SanPham sp : paginatedProducts) {
                   %>
                   <div class="col-md-3 md-col">
                       <div class="col-md">
                           <a href="single.jsp?MaSP=<%=sp.getMaSP()%>">
                               <img src="images/<%= sp.getHinhAnh() %>" alt="" />
                           </a>
                           <div class="top-content">
                               <center>
                                   <h5><%= sp.getTenSP() %></h5>
                               </center>
                               <div class="white">
                                   <a href="single.jsp?MaSP=<%=sp.getMaSP()%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
                                   <p class="dollar"><span class="in-dollar"><%= sp.getGia() %></span><span>Đ</span></p>
                                   <div class="clearfix"></div>
                               </div>
                           </div>
                       </div>
                   </div>
                   <%
                       }
                   %>
                   <div class="clearfix"></div>
               </div>
           </div>
			<!-- Phân trang -->
			<div style="margin: 10px 0;text-align: center;height: 100px;"> <!-- Giảm padding ở đây -->
			    <style>
			        .start {
			            display: inline-flex;
			            align-items: center;
			            list-style: none;
			            padding: 0;
			        }
			        .start a {
			            text-decoration: none;
			            padding: 5px 10px;  /* Giảm padding ở đây */
			            border: 1px solid #ccc;
			            border-radius: 4px;
			            color: brown;
			            margin: 0 5px;
			        }
			        .start a:hover {
			            background-color: #f0f0f0;
			        }
			        .start .active {
			            background-color: green;
			            color: white;
			        }
			        .start .disabled {
			            pointer-events: none;
			            opacity: 0.5;
			        }
			    </style>
			   
			    <ul class="start">
			        <li>
			            <a href="?page=1">Trang Đầu</a>
			        </li>
			        <li>
			            <a href="?page=<%= currentPage - 1 %>" <%= (currentPage == 1) ? "class='disabled'" : "" %>>«</a>
			        </li>
			        <%
			            for (int i = 1; i <= totalPages; i++) {
			        %>
			            <li>
			                <a href="?page=<%= i %>" <%= (currentPage == i) ? "class='active'" : "" %>><%= i %></a>
			            </li>
			        <%
			            }
			        %>
			        <li>
			            <a href="?page=<%= currentPage + 1 %>" <%= (currentPage == totalPages) ? "class='disabled'" : "" %>>»</a>
			        </li>
			        <li>
			            <a href="?page=<%= totalPages %>">Trang Cuối</a>
			        </li>
			    </ul>
			</div>
			
           <!-- Phần nhãn hiệu -->
           <div class="content-middle">
		    <h3 class="future">NHÃN HIỆU</h3>
		    <div class="content-middle-in">
		       <ul id="flexiselDemo1" style="list-style-type: none; padding: 0; margin: 0; display: flex; flex-wrap: wrap; align-items: center;">

		            <%
		                List<slidebannerLogo> listslidebannerLogo = slidebannerLogoDAO.getListslidebannerLogo();
		                for (slidebannerLogo listLogo : listslidebannerLogo) {
		            %>
		                <li>
		                    <img src="images/<%= listLogo.getSlidebannerLogoName() %>" alt="Logo" style="width: 100px; height: auto;" />
		                </li>
		            <%
		                }
		            %>
		        </ul>
		        <script type="text/javascript">
		            $(window).load(function() {
		                $("#flexiselDemo1").flexisel({
		                    visibleItems: 4,
		                    animationSpeed: 1000,
		                    autoPlay: true,
		                    autoPlaySpeed: 3000,
		                    pauseOnHover: true,
		                    enableResponsiveBreakpoints: true,
		                    responsiveBreakpoints: { 
		                        portrait: { changePoint: 480, visibleItems: 1 }, 
		                        landscape: { changePoint: 640, visibleItems: 2 },
		                        tablet: { changePoint: 768, visibleItems: 3 }
		                    }
		                });
		            });
		        </script>
		    </div>
		</div>
           <!-- Phần có trên webs -->
           <div class="content-bottom">
               <h3 class="future">CÓ TRÊN WEBS</h3>
               <div class="content-bottom-in">
                   <ul id="flexiselDemo2" style="display: flex; list-style-type: none; padding: 0; margin: 0;">
                       <%
                           // Lặp qua danh sách sản phẩm để hiển thị
                           for (SanPham sp : products) {
                       %>
                       <li style="flex: 1 0 auto; margin-right: 10px;">
                           <div class="col-md">
                               <a><img src="images/<%= sp.getHinhAnh() %>" alt="" style="width: 100%; height: auto;" /></a>	
                               <div class="top-content">
                                   <center>
                                       <h5><a><%= sp.getTenSP() %></a></h5>
                                   </center>
                                   <div class="white">
                                       <a href="products.jsp?ChuyenMuc=<%= sp.getMaCM() %>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>	
                                       <p class="dollar"><span class="in-dollar"><%= sp.getGia() %></span><span>Đ</span></p>
                                       <div class="clearfix"></div>
                                   </div>
                               </div>							
                           </div>
                       </li>
                       <%
                           }
                       %>
                   </ul>
                   <script type="text/javascript">
                       $(window).load(function() {
                           $("#flexiselDemo2").flexisel({
                               visibleItems: 4,
                               animationSpeed: 1000,
                               autoPlay: true,
                               autoPlaySpeed: 3000,
                               pauseOnHover: true,
                               enableResponsiveBreakpoints: true,
                               responsiveBreakpoints: {
                                   portrait: { changePoint: 480, visibleItems: 1 },
                                   landscape: { changePoint: 640, visibleItems: 2 },
                                   tablet: { changePoint: 768, visibleItems: 3 }
                               }
                           });
                       });
                   </script>
               </div>
           </div>
       </div>
   </div>
</body>
</html>