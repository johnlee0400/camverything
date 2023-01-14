package com.multi.camp.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class productDAOImpl implements productDAO {
	SqlSession sqlSession;
	
	public productDAOImpl() {
		super();
	}
	
	@Autowired
	public productDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public List<productDTO> productList() {
		List<productDTO> list = sqlSession.selectList("com.multi.camp.product.selectall");
		return list;
	}

	@Override
	public productDTO read(String product_code) {
		return sqlSession.selectOne("com.multi.camp.product.read", product_code);
	}

	@Override
	public List<productDTO> findByCategory(String category) {
		return sqlSession.selectList("com.multi.camp.product.categorySelect", category);
	}

	@Override
	public List<productDTO> search(String data) {
		return sqlSession.selectList("com.multi.camp.product.search", data);
	}

}
