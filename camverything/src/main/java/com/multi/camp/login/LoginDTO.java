package com.multi.camp.login;

public class LoginDTO {

	private String loginid;
	private String loginpass;
	private String id;
	private String pass;
	private String name;
	private String addr;
	private Integer tel;
	private String nickname;
	private Integer birth;
	private String email;
	private String zonecode;
	private String detailaddr;
	
	public LoginDTO() {
		//System.out.println("기본생성자");
	}

	public LoginDTO(String loginid, String loginpass, String id, String pass, String name, String addr, Integer tel,
			String nickname, Integer birth, String email, String zonecode, String detailaddr) {
		super();
		this.loginid = loginid;
		this.loginpass = loginpass;
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.addr = addr;
		this.tel = tel;
		this.nickname = nickname;
		this.birth = birth;
		this.email = email;
		this.zonecode = zonecode;
		this.detailaddr = detailaddr;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getZonecode() {
		return zonecode;
	}

	public void setZonecode(String zonecode) {
		this.zonecode = zonecode;
	}

	public String getDetailaddr() {
		return detailaddr;
	}

	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}

	@Override
	public String toString() {
		return "LoginDTO [loginid=" + loginid + ", loginpass=" + loginpass + ", id=" + id + ", pass=" + pass + ", name="
				+ name + ", addr=" + addr + ", tel=" + tel + ", nickname=" + nickname + ", birth=" + birth + ", email="
				+ email + ", zonecode=" + zonecode + ", detailaddr=" + detailaddr + "]";
	}


}

	
