package com.multi.camp.servicecenter;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ServiceCenterDAOImpl implements ServiceCenterDAO{
	SqlSession sqlSession;
	@Override
	public List<ServiceCenterDTO> servicelist() {
		List<ServiceCenterDTO> list = sqlSession.selectList("com.multi.camp.service.test");
		return list;
	}
	@Override
	public List<ServiceCenterDTO> findByCategory(String category) {
		return sqlSession.selectList("com.multi.camp.service.categorySelect",category);
	}
	
}
