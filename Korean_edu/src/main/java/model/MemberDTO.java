package model;

public class MemberDTO {
	private String id;
	private String password;
	private String name;
	private String birth;
	private int tel;
	private String address;
	private int point;
	
	public MemberDTO(String id, String password, String name, String birth, int tel, String address, int point) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.tel = tel;
		this.address = address;
		this.point = point;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	
	

	
	
}
