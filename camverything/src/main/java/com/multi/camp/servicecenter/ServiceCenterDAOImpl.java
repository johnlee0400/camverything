package com.multi.camp.servicecenter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ServiceCenterDAOImpl implements ServiceCenterDAO{
	//Mybatis의 핵심클래스를 이용해서 sql문을 실행
	SqlSession sqlSession;
	public ServiceCenterDAOImpl() {
		
	}
	@Autowired
	public ServiceCenterDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public int insert(ServiceCenterDTO service) {
//		System.out.println("====================dao=======================");
		return sqlSession.insert("com.multi.camp.service.write", service);
	}

	

	@Override
	public ServiceCenterDTO read(String service_no) {
		return sqlSession.selectOne("com.multi.camp.service.read", service_no);
	}

	@Override
	public int update(ServiceCenterDTO service) {
		return sqlSession.update("com.multi.camp.service.update", service);
	}

	@Override
	public int delete(String service_no) {
		return sqlSession.delete("com.multi.camp.service.delete",service_no);
	}
	@Override
	public List<ServiceCenterDTO> search(String data) {
		return sqlSession.selectList("com.multi.camp.service.search",data);
	}
	@Override
	public List<ServiceCenterDTO> search(String tag, String data) {
//		System.out.println(tag+",======================="+data);
		Map<String,String> map =new HashMap<String, String>();
		map.put("tag", tag);
		map.put("data", data);
		return sqlSession.selectList("com.multi.camp.service.dynamicSearch", map);
	}
	@Override
	public List<ServiceCenterDTO> findByCategory(String category) {
		return sqlSession.selectList("com.multi.camp.service.categorySelect",
				category);
	}
	
	@Override
	public List<ServiceCenterDTO> findnoticeindex() {
		return sqlSession.selectList("com.multi.camp.service.indexnotice");
	}
	@Override
	public List<ServiceCenterDTO> serviceList() {
//		System.out.println("====================dao=======================");
		List<ServiceCenterDTO> list = sqlSession.selectList("com.multi.camp.service.selectall");
		
//		System.out.println("====================dao끝=======================");
		return  list;
	}
}















