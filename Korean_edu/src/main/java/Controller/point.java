package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;


@WebServlet("/point")
public class point extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		MemberDAO dao = new MemberDAO();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		int point = Integer.parseInt(request.getParameter("point"));
		
		int cnt = dao.pointUpdate(member, point);
		
		PrintWriter out = response.getWriter();
		
		if(cnt == 1) {
			out.print("성공");
		}else {
			out.print("실패");
		}
		
		
				
		
	}

}
