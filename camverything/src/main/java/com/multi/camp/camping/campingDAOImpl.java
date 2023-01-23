package com.multi.camp.camping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class campingDAOImpl implements campingDAO {
	SqlSession sqlSession;

	public campingDAOImpl() {
	}

	@Autowired
	public campingDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public List<campingDTO> campingList() {
		List<campingDTO> list = sqlSession.selectList("com.multi.camp.camping.selectall");
		return list;
	}

	@Override
	public List<campingDTO> search(String data) {
		return sqlSession.selectList("com.multi.camp.camping.search", data);
	}

	@Override
	public List<campingDTO> findByCategory(String category) {
		return sqlSession.selectList("com.multi.camp.camping.categorySelect" ,category);
	}
	
	

}
