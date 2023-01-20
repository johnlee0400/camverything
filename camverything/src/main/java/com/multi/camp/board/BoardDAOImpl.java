package com.multi.camp.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO{
	//Mybatis의 핵심클래스를 이용해서 sql문을 실행
	SqlSession sqlSession;
	public BoardDAOImpl() {
		
	}
	@Autowired
	public BoardDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public int insert(BoardDTO board) {
//		System.out.println("====================dao=======================");
		return sqlSession.insert("com.multi.camp.board.write", board);
	}

	

	@Override
	public BoardDTO read(String board_no) {
		return sqlSession.selectOne("com.multi.camp.board.read", board_no);
	}

	@Override
	public int update(BoardDTO board) {
		return sqlSession.update("com.multi.camp.board.update", board);
	}

	@Override
	public int delete(String board_no) {
		return sqlSession.delete("com.multi.camp.board.delete",board_no);
	}
	@Override
	public List<BoardDTO> search(String data) {
		return sqlSession.selectList("com.multi.camp.board.search",data);
	}
	@Override
	public List<BoardDTO> search(String tag, String data) {
//		System.out.println(tag+",======================="+data);
		Map<String,String> map =new HashMap<String, String>();
		map.put("tag", tag);
		map.put("data", data);
		return sqlSession.selectList("com.multi.camp.board.dynamicSearch", map);
	}
	@Override
	public List<BoardDTO> findByCategory(String category) {
		return sqlSession.selectList("com.multi.camp.board.categorySelect",
				category);
	}
	
	@Override
	public List<BoardDTO> findboardindex() {
		System.out.println("daoimpl");
		return sqlSession.selectList("com.multi.camp.board.indexboard");
	}
	@Override
	public List<BoardDTO> boardList() {
//		System.out.println("====================dao=======================");
		List<BoardDTO> list = sqlSession.selectList("com.multi.camp.board.selectall");
		
//		System.out.println("====================dao끝=======================");
		return  list;
	}
	@Override
	public int insertFile(List<BoardFileDTO> boardfiledtolist) {
//		System.out.println(boardfiledtolist+"--------------------");
		return sqlSession.insert("com.multi.camp.board.fileinsert", boardfiledtolist);
	}
	@Override
	public List<BoardFileDTO> getFileList(String boardno) {
		return sqlSession.selectList("com.multi.camp.board.fileselect", boardno);
	}
	@Override
	public BoardFileDTO getFile(BoardFileDTO inputdata) {
		System.out.println(inputdata);
		return sqlSession.selectOne("com.multi.camp.board.getfileinfo", inputdata);
	}
}















