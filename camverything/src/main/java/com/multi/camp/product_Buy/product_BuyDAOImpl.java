package com.multi.camp.product_Buy;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class product_BuyDAOImpl implements product_BuyDAO {
	SqlSession sqlSession;
	
	
	
	public product_BuyDAOImpl() {
		super();
	}

	@Autowired
	public product_BuyDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public int insert(product_BuyDTO dto) {
		System.out.println("상품결제 DAO insert 확인"+dto+"*******");
		return sqlSession.insert("com.multi.camp.product_Buy.insert", dto);
	}

	@Override
	public List<product_BuyDTO> BuyList(String id) {
		System.out.println("상품결제 DAO List 확인"+id+"+++++++");
		return sqlSession.selectList("com.multi.camp.product_Buy.selectall", id);
	}

	@Override
	public int cancel(String pay_date) {
		return sqlSession.delete("com.multi.camp.product_Buy.cancel", pay_date);
	}

	@Override
	public int mypageCancel(int product_payno) {
		return sqlSession.delete("com.multi.camp.product_Buy.mypagecancel", product_payno);
	}

}
