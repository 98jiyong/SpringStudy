package www.silver.vo;

public class BoardVO {
	String type = null;
	

	String username = null;
	String pass = null;
	String title  = null;
	String content = null;
	String viewmember = null;
	String indate = null;
	String[] filename = null;
	String num = null;
	
	@Override
	public String toString() {
		return "BoardVO [type=" + type + ", username=" + username + ", pass=" + pass + ", title=" + title + ", content=" + content + ", viewmember="
				+ viewmember + ", indate=" + indate + "]";
	}
	public String getType() {
		return type;
	}
	public String getUsername() {
		return username;
	}

	public String getPass() {
		return pass;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public String getViewmember() {
		return viewmember;
	}

	public String getIndate() {
		return indate;
	}
	public String[] getFilename() {
		return filename;
	}
	public String getNum() {
		return num;
	}

	public void setType(String type) {
		this.type = type;
	}
	public void setUsername(String username) {
		this.username = username;	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setViewmember(String viewmember) {
		this.viewmember = viewmember;
	}

	public void setIndate(String indate) {
		this.indate = indate;
	}
	public void setFilename(String[] filename) {
		this.filename = filename;
	}
	public void setNum(String num) {
		this.num = num;
	}
}
