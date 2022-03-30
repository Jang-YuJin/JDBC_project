package project.shopController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import project.shopModel.MemberDTO;
import project.shopService.ShopDAO;

@WebServlet("/join")
public class MemberJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberJoin() {
    }

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		String passwordC = request.getParameter("pw_ch");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String[] birth = request.getParameterValues("birth");
		MemberDTO dto = new MemberDTO();
		ShopDAO dao = new ShopDAO();
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if("".equals(name) || name == null ||
				"".equals(id) || id == null ||
				"".equals(password) || password == null ||
				"".equals(passwordC) || passwordC == null ||
				"".equals(tel) || tel == null ||
				"".equals(address) || address == null ||
				birth == null || "".equals(birth[0]) || "".equals(birth[1]) || "".equals(birth[2])) {
			out.println("<script>alert('모든 내용을 입력해주세요.'); location.href='member/join.jsp';</script>");
			out.close();
		}else {
			if(password.equals(passwordC)) {
//				if(dao.isIdUnique(id)) {
//					out.println("<script>alert('아이디가 중복됩니다.'); location.href='member/join.jsp';</script>");
//					out.close();
//				}else {
					String birthIn = birth[0] + "-" + birth[1] + "-" + birth[2];
					dto.setName(name);
					dto.setId(id);
					dto.setPassword(passwordC);
					dto.setTel(tel);
					dto.setAddress(address);
					dto.setBirth(Date.valueOf(birthIn));
					int result = dao.setMemberInfo(dto);
					System.out.println(result);
					response.sendRedirect("index.jsp");
//				}
			}else{
				out.println("<script>alert('비밀번호와 비밀번호 확인이 다릅니다.'); location.href='member/join.jsp';</script>");
				out.close();
			}
		}
	}

}
