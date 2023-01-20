package com.multi.camp.servicecenter;

public class ServiceFileDTO {
	private String service_no;
	private String originalFilename;
	private String storeFilename;
	private String serviceFileno;
	public ServiceFileDTO() {
		
	}
	
	public ServiceFileDTO(String originalFilename, String storeFilename) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}

	
	public ServiceFileDTO(String service_no, String originalFilename, String storeFilename, String serviceFileno) {
		super();
		this.service_no = service_no;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
		this.serviceFileno = serviceFileno;
	}

	public ServiceFileDTO(String service_no, String originalFilename, String storeFilename) {
		super();
		this.service_no = service_no;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}

	
	@Override
	public String toString() {
		return "ServiceFileDTO [service_no=" + service_no + ", originalFilename=" + originalFilename + ", storeFilename="
				+ storeFilename + ", serviceFileno=" + serviceFileno + "]";
	}

	public String getService_no() {
		return service_no;
	}
	public void setService_no(String service_no) {
		this.service_no = service_no;
	}
	public String getOriginalFilename() {
		return originalFilename;
	}
	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}
	public String getStoreFilename() {
		return storeFilename;
	}
	public void setStoreFilename(String storeFilename) {
		this.storeFilename = storeFilename;
	}

	public String getServiceFileno() {
		return serviceFileno;
	}

	public void setServiceFileno(String serviceFileno) {
		this.serviceFileno = serviceFileno;
	}

	
}
