package Controller;

import java.io.IOException;
import DAO.TaiKhoanDAO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.TaiKhoan;
import tools.MD5;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String url = "";
		String action = request.getParameter("action");

		// Kiểm tra hành động đăng xuất
		if (action != null && action.equals("Logout")) {
			// Hủy session khi người dùng đăng xuất
			session.invalidate();
			// Sau khi đăng xuất, chuyển hướng về trang chính (home page)
			response.sendRedirect(request.getContextPath() + "/");  // Trang chính của ứng dụng
		} else {
			// Chuyển về trang chủ hoặc trang khác tùy theo yêu cầu của bạn
			request.getRequestDispatcher("/HomeForward").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String url = "";

		// Lấy thông tin tài khoản từ cơ sở dữ liệu
		TaiKhoan tk = new TaiKhoan();
		tk = TaiKhoanDAO.login(request.getParameter("email"), MD5.encryption(request.getParameter("pass")));

		// Kiểm tra thông tin đăng nhập
		if (request.getParameter("email") == "" || request.getParameter("pass") == "") {
			url = "/login.jsp";
			session.setAttribute("e", ".");
		} else {
			if (tk != null && tk.getPhanLoai() == 1) { // Người dùng thông thường
				session.setAttribute("user", tk);
				url = "/HomeForward";  // Chuyển hướng trang chủ cho người dùng
				response.sendRedirect(request.getContextPath() + "/HomeForward");
				return;  // Đảm bảo không tiếp tục thực hiện các bước sau khi redirect
			} else if (tk != null && tk.getPhanLoai() == 0) { // Admin
				session.setAttribute("user", tk);
				url = "/indexql";  // Chuyển hướng trang quản lý cho admin
				response.sendRedirect(request.getContextPath() + "/indexql");
				return;
			} else {
				// Đăng nhập không thành công
				url = "/login.jsp";
				session.setAttribute("e", "Tài khoản hoặc mật khẩu không chính xác");
			}
		}
		
		// Nếu không có redirect, sử dụng RequestDispatcher để chuyển hướng
		if (url != "") {RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}


}