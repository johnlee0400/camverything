package com.multi.camp.product;

import java.util.List;

public interface productService {
	List<productDTO> productList();
	List<productDTO> findByCategory(String category);
	List<productDTO> search(String data);
	productDTO getProductInfo(String product_code);
}
