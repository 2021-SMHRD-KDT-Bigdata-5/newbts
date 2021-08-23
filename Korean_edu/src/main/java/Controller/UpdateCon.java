package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String birth = request.getParameter("birth");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		int point = Integer.parseInt(request.getParameter("point"));

		MemberDAO dao = new MemberDAO();
		MemberDTO member2 = new MemberDTO(member.getId(), password, name, birth, tel, address, point);
		int cnt = dao.Update(member2);

		if (cnt > 0) { 
			// 세션에도 수정된 정보를 저장
			session.setAttribute("member", member2);
			response.sendRedirect("main.jsp");
		} else {
			response.sendRedirect("Update.jsp");
		}

	}

}
