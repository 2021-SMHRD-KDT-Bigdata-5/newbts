package controller_command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class JoinServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse respose) {
		
		String moveURL = null;
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		int tel = Integer.parseInt(request.getParameter("tel"));
		String address = request.getParameter("address");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, password, name, birth, tel, address);
		int cnt = dao.join(dto);

		if (cnt > 0) { // select�� �����Ͱ� �ִٸ�
			// request ������ email ������ ����
			request.setAttribute("id", id);
			
			System.out.println("���� ����..");
			moveURL = "main.jsp";
			// forward ���
			//RequestDispatcher dispatcher = request.getRequestDispatcher("join_success.jsp");
			//dispatcher.forward(request, response);
			// response.sendRedirect("join_success.jsp");
		} else {
			//response.sendRedirect("main.jsp");
			System.out.println("���� ����..");
			moveURL = "main.jsp";
		}
		return moveURL;
	}

}