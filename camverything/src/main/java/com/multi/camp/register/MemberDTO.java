package com.multi.camp.register;
//비밀번호 확인 때문에 sql에 pass2 추가해야 할 듯함. 
//아니면 추가 안하고 할 수 있는 방법?
public class MemberDTO {
	private String id;
    private String pass;
    private String name;
    private String zonecode;
    private String addr;
    private String detailaddr;
    private String tel;
    private String nickname;
    private String birth;
    private String email;
    
    public MemberDTO() {
    	
    }

	public MemberDTO(String id, String pass, String name, String zonecode, String addr, String detailaddr, String tel,
			String nickname, String birth, String email) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.zonecode = zonecode;
		this.addr = addr;
		this.detailaddr = detailaddr;
		this.tel = tel;
		this.nickname = nickname;
		this.birth = birth;
		this.email = email;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pass=" + pass + ", name=" + name + ", zonecode=" + zonecode + ", addr=" + addr
				+ ", detailaddr=" + detailaddr + ", tel=" + tel + ", nickname=" + nickname + ", birth=" + birth
				+ ", email=" + email + "]";
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

	public String getZonecode() {
		return zonecode;
	}

	public void setZonecode(String zonecode) {
		this.zonecode = zonecode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDetailaddr() {
		return detailaddr;
	}

	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email; 
	}

	public void setEmail(String email) {
		this.email = email;
	}




    
}
