package com.multi.camp.reservation;

import java.sql.Date;

//@DateTimeFormat(pattern = "yyyy-MM-dd")
//Date mydate;  Date형식으로 하고싶으면

public class ReservationDTO {
	private int res_no;
	private int business_no;
	private String id;
	private String camp_date;
	private String camp_period;
	private String camp_loc;
	private String bbq_option;
	private String area_price;
	private String pay_price;
	
	
	public ReservationDTO() {
		
	}
	

	public ReservationDTO(int res_no, int business_no, String id, String camp_date, String camp_period,
			String camp_loc, String bbq_option, String area_price, String pay_price) {
		super();
		this.res_no = res_no;
		this.business_no = business_no;
		this.id = id;
		this.camp_date = camp_date;
		this.camp_period = camp_period;
		this.camp_loc = camp_loc;
		this.bbq_option = bbq_option;
		this.area_price = area_price;
		this.pay_price = pay_price;
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



	public String getCamp_date() {
		return camp_date;
	}



	public void setCamp_date(String camp_date) {
		this.camp_date = camp_date;
	}



	public String getCamp_period() {
		return camp_period;
	}



	public void setCamp_period(String camp_period) {
		this.camp_period = camp_period;
	}



	public String getCamp_loc() {
		return camp_loc;
	}



	public void setCamp_loc(String camp_loc) {
		this.camp_loc = camp_loc;
	}



	public String getBbq_option() {
		return bbq_option;
	}



	public void setBbq_option(String bbq_option) {
		this.bbq_option = bbq_option;
	}



	public String getPay_price() {
		return pay_price;
	}



	public void setPay_price(String pay_price) {
		this.pay_price = pay_price;
	}

	public String getArea_price() {
		return area_price;
	}


	public void setArea_price(String area_price) {
		this.area_price = area_price;
	}


	@Override
	public String toString() {
		return "ReservationDTO [res_no=" + res_no + ", business_no=" + business_no + ", id=" + id + ", camp_date="
				+ camp_date + ", camp_period=" + camp_period + ", camp_loc=" + camp_loc + ", bbq_option=" + bbq_option
				+ ", area_price=" + area_price + ", pay_price=" + pay_price + "]";
	}


	

	
}
