package com.multi.camp.servicecenter;

import java.sql.Date;

public class ServiceCenterDTO {
	private int service_no;
	private String id;
	private String service_title;
	private String service_content;
	private Date create_date;
	private String category;
	
	public ServiceCenterDTO() {
		
	}

	public ServiceCenterDTO(int service_no, String id, String service_title, String service_content, Date create_date,
			String category) {
		super();
		this.service_no = service_no;
		this.id = id;
		this.service_title = service_title;
		this.service_content = service_content;
		this.create_date = create_date;
		this.category = category;
	}
	
	
	@Override
	public String toString() {
		return "ServiceCenterDTO [service_no=" + service_no + ", id=" + id + ", service_title=" + service_title
				+ ", service_content=" + service_content + ", create_date=" + create_date + ", category=" + category
				+ "]";
	}

	public int getService_no() {
		return service_no;
	}

	public void setService_no(int service_no) {
		this.service_no = service_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getService_title() {
		return service_title;
	}

	public void setService_title(String service_title) {
		this.service_title = service_title;
	}

	public String getService_content() {
		return service_content;
	}

	public void setService_content(String service_content) {
		this.service_content = service_content;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
}
