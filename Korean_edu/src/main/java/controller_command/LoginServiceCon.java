package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class LoginServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse respose) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String moveURL = null;
		
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.loginCheck(id,password); // 로그인체크로 넘겨줌
		
		//MemberDTO에 저장돼서 여기서 처리

		//member 객체의 값 판단
		if (member != null) { // member 정보가 DB에 있다면
		
			HttpSession session = request.getSession();
			
			System.out.println("로그인 성공..");
			moveURL = "main.jsp";
		} else {
			System.out.println("로그인 실패..");
			moveURL = "main.jsp";
		}
		return moveURL;
	}
	
}
