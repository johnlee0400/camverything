package com.multi.camp.camping;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class campingServiceImpl implements campingService {
	campingDAO dao;

	public campingServiceImpl() {
		super();
	}
	@Autowired
	public campingServiceImpl(campingDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public List<campingDTO> campingList() {
		return dao.campingList();
	}
	
	@Override
	public List<campingDTO> search(String data) {
		return dao.search(data);
	}
	@Override
	public List<campingDTO> findByCategory(String category) {
		List<campingDTO> list = null;
		System.out.println(category+"서비스");
		if (category!=null) {
			if(category.equals("1")) {
				list = dao.campingList();
			}else {
				list = dao.findByCategory(category);
			}
		}
		return list;
	}
	

}
