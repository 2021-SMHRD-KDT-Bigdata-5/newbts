package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// ����ȣ��Ʈ : oracle DB�� ��ġ�� PC�� IP�ּ� ����
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "bts";
			String pass = "123";

			// �����ͺ��̽� ����
			conn = DriverManager.getConnection(url, user, pass);

		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar ���� �Ǵ� driver��� Ȯ��!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB���� ����..");
			e.printStackTrace();
		}

	}

	public void close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (psmt != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int insertBoard(BoardDTO board) {

		int cnt = 0;

		try {
			connection();

			// ���� ����
			String sql = "insert into board values(num_message.nextval,?,?,sysdate)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, board.getWriter());
			psmt.setString(2, board.getContent());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} // end

		return cnt;
	}
	
	public ArrayList<BoardDTO> showBoard() {

		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		BoardDTO message = null;

		try {

			connection();

			// ���� ����
			String sql = "select * from board";
			
			// �١١١١�
			// insert, update, delete : executeUpdate() --> DB�� ������ ������ ��
			// select : executeQuery() --> DB�� ������ �˻��� ��
			// cnt : 0 �̸� ���� 0 �̻��̸� ����
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			// ȸ������ ���� DTO���� �����ͼ� ArrayList�� ����
			while (rs.next()) {
				int getNum = rs.getInt(1);
				String getWriter = rs.getString(2);
				String getMessage = rs.getString(3);
				String date = rs.getString(4);
				
				message = new BoardDTO(getNum, getWriter, getMessage, date);
				list.add(message);
				
			}
		} catch (SQLException e) {
			// DB���� ���� �߻��� ����Ǵ� catch��
			e.printStackTrace();
		} finally {
			close();
		} // end

		return list;
	}
}
