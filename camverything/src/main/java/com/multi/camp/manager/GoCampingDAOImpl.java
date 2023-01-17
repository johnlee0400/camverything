package com.multi.camp.manager;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoCampingDAOImpl implements GoCampingDAO{
	SqlSession sqlsession;
	
	@Autowired
	public GoCampingDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}

	@Override
	public int insertGoCamping(List<GoCampingDTO> dtolist) {
		System.out.println("daoList=>"+dtolist);
		return sqlsession.insert("com.multi.camp.manager.insertgocamping",dtolist);
	}

}
