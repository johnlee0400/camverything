package com.multi.camp.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.camp.manager.GoCampingDTO;
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
		System.out.println("###Service:"+dto+"###");
		return dao.insert(dto);
	}


	@Override
	public List<ReservationDTO> getcampDate(ReservationDTO dto) {
		System.out.println("service쪽 dto:"+dto);
		return dao.getcampDate(dto);
	}


	@Override
	public int cancel(String camp_date) {
		return dao.cancel(camp_date);
	}

	@Override
	public int mypageCancel(int res_no) {
		return dao.mypageCancel(res_no);
	}


	@Override
	public GoCampingDTO getGoCampingDataByfacltNm(String facltNm) {
		
		return dao.getGoCampingDataByfacltNm(facltNm);
	}


	@Override
	public List<ReservationDTO> getResDataById(String id) {
		return dao.getResDataById(id);
	}

	
}
