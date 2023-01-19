package com.multi.camp.product_Buy;

import java.util.List;

public interface product_BuyService {
	int insert(product_BuyDTO dto);
	List<product_BuyDTO> getpayDate(product_BuyDTO dto);
	int cancel();
}
