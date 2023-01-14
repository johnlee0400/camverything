package com.multi.camp.product;

import java.util.List;

public interface productDAO {
	List<productDTO> productList();
	List<productDTO> findByCategory(String category);
	List<productDTO> search(String data);
	productDTO read(String product_code);
}
