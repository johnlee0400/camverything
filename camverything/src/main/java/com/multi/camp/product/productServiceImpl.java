package com.multi.camp.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class productServiceImpl implements productService {
	
	productDAO dao;
	
	public productServiceImpl() {
		super();
	}
	@Autowired
	public productServiceImpl(productDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public List<productDTO> productList() {
		return dao.productList();
	}
	@Override
	public productDTO getProductInfo(String product_code) {
		return dao.read(product_code);
	}
	@Override
	public List<productDTO> findByCategory(String category) {
		List<productDTO> list = null;
		if(category!=null) {
			if(category!=null) {
				if(category.equals("1")) {
					list = dao.productList();
				}else {
					list = dao.findByCategory(category);
				}
			}
		}
		return list;
	}
	@Override
	public List<productDTO> search(String data) {
		return dao.search(data);
	}
}
