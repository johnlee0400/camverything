package com.multi.camp.login;

public class LoginDTO {

	private String loginid;
	private String loginpass;
	private String Name;
	private String addr;
	private Integer tel;
	private String nickname;
	private Integer birth;
	private String email;
	
	
	public LoginDTO() {
		//System.out.println("기본생성자");
	}

	public LoginDTO(String loginid, String loginpass, String name, String addr, Integer tel, String nickname,
			Integer birth, String email) {
		super();
		this.loginid = loginid;
		this.loginpass = loginpass;
		Name = name;
		this.addr = addr;
		this.tel = tel;
		this.nickname = nickname;
		this.birth = birth;
		this.email = email;
	}


	@Override
	public String toString() {
		return "LoginDTO [loginid=" + loginid + ", loginpass=" + loginpass + ", Name=" + Name + ", addr=" + addr
				+ ", tel=" + tel + ", nickname=" + nickname + ", birth=" + birth + ", email=" + email + "]";
	}

	public String getLoginid() {
		return loginid;
	}


	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}


	public String getLoginpass() {
		return loginpass;
	}


	public void setLoginpass(String loginpass) {
		this.loginpass = loginpass;
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


	public Integer getTel() {
		return tel;
	}


	public void setTel(Integer tel) {
		this.tel = tel;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public Integer getBirth() {
		return birth;
	}


	public void setBirth(Integer birth) {
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

	
