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
	public List<product_BuyDTO> getpayDate(product_BuyDTO dto) {
		System.out.println("service쪽 dto:"+dto);
		return dao.getpayDate(dto);
	}

	@Override
	public int cancel() {
		// TODO Auto-generated method stub
		return dao.cancel();
	}

}
