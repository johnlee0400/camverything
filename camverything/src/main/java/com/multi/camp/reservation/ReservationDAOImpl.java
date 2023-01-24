package com.multi.camp.reservation;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.camp.manager.GoCampingDTO;
@Repository
public class ReservationDAOImpl implements ReservationDAO{
	SqlSession sqlsession;
	
	@Autowired
	public ReservationDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}

	@Override
	public int insert(ReservationDTO dto) {
		System.out.println("###DAO:"+dto+"###");
		return sqlsession.insert("com.multi.camp.reservation.insert",dto);
	}

	@Override
	public List<ReservationDTO> getcampDate(ReservationDTO dto) {
		//System.out.println("dao쪽 dto:"+dto);
		return sqlsession.selectList("com.multi.camp.reservation.campdateselect",dto);
	}

	@Override
	public int cancel(String camp_date) {
		return sqlsession.delete("com.multi.camp.reservation.cancel",camp_date);
	}
	
	@Override
	public int mypageCancel(int res_no) {
		// TODO Auto-generated method stub
		return sqlsession.delete("com.multi.camp.reservation.mypagecancel",res_no);
	}

	@Override
	public GoCampingDTO getGoCampingDataByfacltNm(String facltNm) {
		return sqlsession.selectOne("com.multi.camp.reservation.gocampingdata",facltNm);
	}

	@Override
	public List<ReservationDTO> getResDataById(String id) {
		return sqlsession.selectList("com.multi.camp.reservation.getresdata",id);
	}

	
}
