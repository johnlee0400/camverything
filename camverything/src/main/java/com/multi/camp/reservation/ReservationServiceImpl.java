package com.multi.camp.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ReservationServiceImpl implements ReservationService{
	
	ReservationDAO dao;
	
	@Autowired
	public ReservationServiceImpl(ReservationDAO dao) {
		super();
		this.dao = dao;
	}


	@Override
	public int insert(ReservationDTO dto) {
		
		return dao.insert(dto);
	}

}
