package com.multi.camp.product;

import java.util.List;

public interface productService {
	List<productDTO> productList();
	productDTO getProductInfo(String product_code);
}
