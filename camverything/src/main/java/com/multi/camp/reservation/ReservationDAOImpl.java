package com.multi.camp.reservation;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
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
		
		return sqlsession.insert("com.multi.camp.reservation.insert",dto);
	}

}
