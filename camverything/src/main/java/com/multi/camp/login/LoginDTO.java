package com.multi.camp.login;

public class LoginDTO {

	private String id;
	private String pass;
	private String Name;
	private String addr;
	private int tel;
	private String nickname;
	private int birth;
	private String email;
	
	
	public LoginDTO() {
		System.out.println("기본생성자");
	}
	
	
	public LoginDTO(String id, String pass, String name, String addr, int tel, String nickname, int birth,
			String email) {
		super();
		this.id = id;
		this.pass = pass;
		Name = name;
		this.addr = addr;
		this.tel = tel;
		this.nickname = nickname;
		this.birth = birth;
		this.email = email;
	}


	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pass=" + pass + ", Name=" + Name + ", addr=" + addr + ", tel=" + tel
				+ ", nickname=" + nickname + ", birth=" + birth + ", email=" + email + "]";
	}


	public String getId() {
		System.out.println("++++++++");
		return id;
	}


	public void setId(String id) {
		System.out.println("--------");
		this.id = id;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public String getName() {
		return Name;
	}


	public void setName(String name) {
		Name = name;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public int getTel() {
		return tel;
	}


	public void setTel(int tel) {
		this.tel = tel;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public int getBirth() {
		return birth;
	}


	public void setBirth(int birth) {
		this.birth = birth;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMenupath() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}

	
