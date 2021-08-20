package model;

public class BoardDTO {
	private int num;
	private String writer;
	private String content;
	private String writedate;
	
	public BoardDTO(int num, String writer, String content, String writedate) {
		super();
		this.num = num;
		this.writer = writer;
		this.content = content;
		this.writedate = writedate;
	}

	public BoardDTO(String writer, String content) {
		super();
		this.writer = writer;
		this.content = content;
	}
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWritedate() {
		return writedate;
	}

	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	
	
}
