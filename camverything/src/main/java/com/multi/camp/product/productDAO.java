package com.multi.camp.product;

import java.util.List;

public interface productDAO {
	List<productDTO> productList();
	productDTO read(String product_code);
}
