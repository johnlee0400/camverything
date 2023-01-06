package com.multi.camp.camping;

public class campingDTO {
	
	private int business_no;
	private String id;
	private String manager_id;
	private String camp_name;
	private String business_name;
	private int camp_tel;
	private String email;
	private String camp_acc;
	private String camp_fac;
	private String camp_nature;
	private String camp_thema;
	private String area_code;
	
	
	public campingDTO() {
		super();
	}

	public campingDTO(int business_no, String id, String manager_id, String camp_name, String business_name,
			int camp_tel, String email, String camp_acc, String camp_fac, String camp_nature, String camp_thema,
			String area_code) {
		super();
		this.business_no = business_no;
		this.id = id;
		this.manager_id = manager_id;
		this.camp_name = camp_name;
		this.business_name = business_name;
		this.camp_tel = camp_tel;
		this.email = email;
		this.camp_acc = camp_acc;
		this.camp_fac = camp_fac;
		this.camp_nature = camp_nature;
		this.camp_thema = camp_thema;
		this.area_code = area_code;
	}

	@Override
	public String toString() {
		return "campingDTO [business_no=" + business_no + ", id=" + id + ", manager_id=" + manager_id + ", camp_name="
				+ camp_name + ", business_name=" + business_name + ", camp_tel=" + camp_tel + ", email=" + email
				+ ", camp_acc=" + camp_acc + ", camp_fac=" + camp_fac + ", camp_nature=" + camp_nature + ", camp_thema="
				+ camp_thema + ", area_code=" + area_code + "]";
	}

	public int getBusiness_no() {
		return business_no;
	}

	public void setBusiness_no(int business_no) {
		this.business_no = business_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getManager_id() {
		return manager_id;
	}

	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}

	public String getCamp_name() {
		return camp_name;
	}

	public void setCamp_name(String camp_name) {
		this.camp_name = camp_name;
	}

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}

	public int getCamp_tel() {
		return camp_tel;
	}

	public void setCamp_tel(int camp_tel) {
		this.camp_tel = camp_tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCamp_acc() {
		return camp_acc;
	}

	public void setCamp_acc(String camp_acc) {
		this.camp_acc = camp_acc;
	}

	public String getCamp_fac() {
		return camp_fac;
	}

	public void setCamp_fac(String camp_fac) {
		this.camp_fac = camp_fac;
	}

	public String getCamp_nature() {
		return camp_nature;
	}

	public void setCamp_nature(String camp_nature) {
		this.camp_nature = camp_nature;
	}

	public String getCamp_thema() {
		return camp_thema;
	}

	public void setCamp_thema(String camp_thema) {
		this.camp_thema = camp_thema;
	}

	public String getArea_code() {
		return area_code;
	}

	public void setArea_code(String area_code) {
		this.area_code = area_code;
	}
	
	
	
}
