package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
	
	public class MemberDAO {

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

	
	public MemberDTO loginCheck(String id, String password) {

		MemberDTO member = null;

		try {

			connection();
			
			String sql = "select * from member where id=? and password=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, password);

			rs = psmt.executeQuery();

			// next() : ���� ������ �Ѿ�� ������ ���� ���� �Ǵ�(true/false)
			if (rs.next()) { // select�� �����Ͱ� �ִٸ�
				String getId = rs.getString(1);
	            String getPassword = rs.getString(2);
	            String getName = rs.getString(3);
	            String  getBirth = rs.getString(4);
	            int  getTel = rs.getInt(5);
	            String getAddress = rs.getString(6);
	            int getPoint = rs.getInt(7);
	            
	            member = new MemberDTO(getId, getPassword, getName, 
	            		 getBirth,getTel, getAddress, getPoint);
			}
		} catch (SQLException e) {
			// DB���� ���� �߻��� ����Ǵ� catch��
			e.printStackTrace();
		} finally {
			close();
		} // end

		return member;
	}
	
	public int join(MemberDTO member) {

		int cnt = 0;

		try {
			connection();

			String sql = "insert into member values(?,?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getPassword());
			psmt.setString(3, member.getName());
			psmt.setString(4, member.getBirth());
			psmt.setInt(5, member.getTel());
			psmt.setString(6, member.getAddress());
			psmt.setInt(7,  member.getPoint());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} // end

		return cnt;
	}
	public boolean idCheck(String id) {

	      boolean check = false;

	      try {

	         connection();

	         // ���� ����
	         String sql = "select * from member where id=?";

	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, id);

	         // �١١١١�
	         // insert, update, delete : executeUpdate() --> DB�� ������ ������ ��
	         // select : executeQuery() --> DB�� ������ �˻��� ��
	         // cnt : 0 �̸� ���� 0 �̻��̸� ����
	         rs = psmt.executeQuery();

	         // next() : ���� ������ �Ѿ�� ������ ���� ���� �Ǵ�(true/false)
	         if (rs.next()) { // select�� �����Ͱ� �ִٸ�
	            check = true;
	         } else {
	            check = false;
	         }
	      } catch (SQLException e) {
	         // DB���� ���� �߻��� ����Ǵ� catch��
	         e.printStackTrace();
	      } finally {
	         close();
	      } // end

	      return check;
	   }
}
