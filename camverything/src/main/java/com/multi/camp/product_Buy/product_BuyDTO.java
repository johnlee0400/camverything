package com.multi.camp.product_Buy;

public class product_BuyDTO {
	private int product_payno;
	private int product_code;
	private String manager_id;
	private String id;
	private String pay_date;
	private String quantity;
	private int total;
	private String product_img;
	private String product_name;
	
	public product_BuyDTO() {
		
	}

	public product_BuyDTO(int product_payno, int product_code, String manager_id, String id, String pay_date,
			String quantity, int total, String product_img, String product_name) {
		super();
		this.product_payno = product_payno;
		this.product_code = product_code;
		this.manager_id = manager_id;
		this.id = id;
		this.pay_date = pay_date;
		this.quantity = quantity;
		this.total = total;
		this.product_img = product_img;
		this.product_name = product_name;
	}

	@Override
	public String toString() {
		return "product_BuyDTO [product_payno=" + product_payno + ", product_code=" + product_code + ", manager_id="
				+ manager_id + ", id=" + id + ", pay_date=" + pay_date + ", quantity=" + quantity + ", total=" + total
				+ ", product_img=" + product_img + ", product_name=" + product_name + "]";
	}

	public int getProduct_payno() {
		return product_payno;
	}

	public void setProduct_payno(int product_payno) {
		this.product_payno = product_payno;
	}

	public int getProduct_code() {
		return product_code;
	}

	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}

	public String getManager_id() {
		return manager_id;
	}

	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPay_date() {
		return pay_date;
	}

	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getProduct_img() {
		return product_img;
	}

	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	
	
	
}
