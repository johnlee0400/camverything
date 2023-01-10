package com.multi.camp.servicecenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.camp.board.BoardDTO;
@Service
public class ServiceCenterServiceImpl implements ServiceCenterService{
	ServiceCenterDAO dao;
	public ServiceCenterServiceImpl() {
		
	}
	@Autowired
	public ServiceCenterServiceImpl(ServiceCenterDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public List<ServiceCenterDTO> servicelist() {
		return dao.servicelist();
	}
	@Override
	public List<ServiceCenterDTO> findByCategory(String category) {
		List<ServiceCenterDTO> list = null;
		if(category!=null) {
			if(category.equals("all")) {
				list = dao.servicelist();
			}else {
				list = dao.findByCategory(category);
			}
		}
		return list;
	}

}
