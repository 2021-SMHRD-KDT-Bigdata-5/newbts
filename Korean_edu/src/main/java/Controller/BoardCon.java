package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardDTO;

@WebServlet("/BoardCon")
public class BoardCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("euc-kr");
		
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO(writer, content);
		
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.insertBoard(dto);
		
		if(cnt > 0) {
			System.out.println("�޼��� ���� ����");
			response.sendRedirect("form.jsp");
		}else {
			System.out.println("�޼��� ���� ����");
			response.sendRedirect("form.jsp");
		}

}
}