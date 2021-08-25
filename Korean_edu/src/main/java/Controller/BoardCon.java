package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

import model.BoardDAO;
import model.BoardDTO;
import model.MemberDTO;

@WebServlet("/BoardCon")
public class BoardCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("euc-kr");
		
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO(title, writer, content);
		
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.insertBoard(dto);
		
		if(cnt > 0) {
			System.out.println("메세지 전송 성공");
			response.sendRedirect("form.jsp");
		}else {
			System.out.println("메세지 전송 실패");
			response.sendRedirect("form.jsp");
		}

}
}
