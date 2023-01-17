package com.multi.camp.product;

public class productDTO {
	private int product_code;
	private String product_name;
	private int product_price;
	private String product_content;
	private String quantity;
	private String category;
	
	public productDTO() {
		super();
	}

	public productDTO(int product_code, String product_name, int product_price, String product_content, String quantity,
			String category) {
		super();
		this.product_code = product_code;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_content = product_content;
		this.quantity = quantity;
		this.category = category;
	}

	@Override
	public String toString() {
		return "productDTO [product_code=" + product_code + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_content=" + product_content + ", quantity=" + quantity + ", category="
				+ category + "]";
	}

	public int getProduct_code() {
		return product_code;
	}

	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getProduct_content() {
		return product_content;
	}

	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
}
