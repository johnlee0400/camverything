package com.multi.camp.reservation;

import java.sql.Date;

//@DateTimeFormat(pattern = "yyyy-MM-dd")
//Date mydate;  Date형식으로 하고싶으면


public class ReservationDTO {
	private int res_no;
	private int business_no;
	private String id;
	private String checkin;
	private Date checkout;
	private String name;
	
	
	public ReservationDTO() {
		
	}
	
	
	public ReservationDTO(int res_no, int business_no, String id, String checkin, Date checkout, String name) {
		super();
		this.res_no = res_no;
		this.business_no = business_no;
		this.id = id;
		this.checkin = checkin;
		this.checkout = checkout;
		this.name = name;
	}


	public int getRes_no() {
		return res_no;
	}


	public void setRes_no(int res_no) {
		this.res_no = res_no;
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


	public String getCheckin() {
		return checkin;
	}


	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}


	public Date getCheckout() {
		return checkout;
	}


	public void setCheckout(Date checkout) {
		this.checkout = checkout;
	}

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return "ReservationDTO [res_no=" + res_no + ", business_no=" + business_no + ", id=" + id + ", checkin="
				+ checkin + ", checkout=" + checkout + ", name=" + name + "]";
	}
	
	
}
