package com.multi.camp.product;

/**
 * @author seoungLee
 *
 */
public class productDTO {
	private int product_code;
	private String product_name;
	private int product_price;
	private String product_content;
	private String quantity;
	private String category;
	private String product_img;
	private String product_img2;
	private String product_img3;
	
	public productDTO() {
		super();
	}

	public productDTO(int product_code, String product_name, int product_price, String product_content, String quantity,
			String category, String product_img, String product_img2, String product_img3) {
		super();
		this.product_code = product_code;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_content = product_content;
		this.quantity = quantity;
		this.category = category;
		this.product_img = product_img;
		this.product_img2 = product_img2;
		this.product_img3 = product_img3;
	}

	@Override
	public String toString() {
		return "productDTO [product_code=" + product_code + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_content=" + product_content + ", quantity=" + quantity + ", category="
				+ category + ", product_img=" + product_img + ", product_img2=" + product_img2 + ", product_img3="
				+ product_img3 + "]";
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

	public String getProduct_img() {
		return product_img;
	}

	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}

	public String getProduct_img2() {
		return product_img2;
	}

	public void setProduct_img2(String product_img2) {
		this.product_img2 = product_img2;
	}

	public String getProduct_img3() {
		return product_img3;
	}

	public void setProduct_img3(String product_img3) {
		this.product_img3 = product_img3;
	}

	
	
	
}
