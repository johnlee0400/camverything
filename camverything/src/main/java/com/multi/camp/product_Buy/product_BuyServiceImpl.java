package com.multi.camp.product_Buy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class product_BuyServiceImpl implements product_BuyService {
	
	product_BuyDAO dao;
	
	public product_BuyServiceImpl() {
		super();
	}
	@Autowired
	public product_BuyServiceImpl(product_BuyDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public int insert(product_BuyDTO dto) {
		System.out.println("###Service:"+dto+"###");
		return dao.insert(dto);
	}

	@Override
	public List<product_BuyDTO> BuyList(String id) {
		System.out.println("service쪽 dto:"+id);
		return dao.BuyList(id);
	}

	@Override
	public int cancel(String pay_date) {
		return dao.cancel(pay_date);
	}
	@Override
	public int mypageCancel(int product_payno) {
		return dao.mypageCancel(product_payno);
	}

}
