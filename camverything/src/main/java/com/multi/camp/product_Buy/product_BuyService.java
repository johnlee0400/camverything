package com.multi.camp.product_Buy;

import java.util.List;

public interface product_BuyService {
	int insert(product_BuyDTO dto);
	List<product_BuyDTO> BuyList(String id);
	int cancel(String pay_date);
	int mypageCancel(int product_payno);
}
