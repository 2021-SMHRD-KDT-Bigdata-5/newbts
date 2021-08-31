package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String password = request.getParameter("password");
		//int point = Integer.parseInt(request.getParameter("point"));
		
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.loginCheck(id,password); // 로그인체크로 넘겨줌
		
		//MemberDTO에 저장돼서 여기서 처리

		//member 객체의 값 판단
		
		if(member.getId().equals("sanghui")) {
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			System.out.println("로그인 성공..");
			response.sendRedirect("phome.jsp");
	}else if (member != null) { // member 정보가 DB에 있다면
		
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			System.out.println("로그인 성공..");
			response.sendRedirect("main.jsp");
		} else {
			System.out.println("로그인 실패..");
			response.sendRedirect("main.jsp");
		}

	}

	}

