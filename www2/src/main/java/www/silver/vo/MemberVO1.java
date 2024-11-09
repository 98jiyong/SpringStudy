package www.silver.vo;

public class MemberVO1 {
	
	String id = null;
	String pw = null;
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + "]";
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
}
