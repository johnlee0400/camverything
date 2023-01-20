package com.multi.camp.servicecenter;
import java.util.List;

import org.springframework.stereotype.Repository;
//mybatis의 SqlSession을 이용해서 작업
public interface ServiceCenterDAO {
	//게시글등록 - db에 처리
	int insert(ServiceCenterDTO service);
	//게시글목록보기 - db에 처리
	List<ServiceCenterDTO> serviceList();
	//게시글상세조회 - db에 처리
	ServiceCenterDTO read(String service_no);
	//게시글수정 - db에 처리
	int update(ServiceCenterDTO service);
	//게시글삭제 - db에 처리
	int delete(String service_no);
	//제목으로 검색
	List<ServiceCenterDTO> search(String data);
	//제목,작성자, 본문, 작성일별로 검색
	List<ServiceCenterDTO> search(String tag,String data);
	List<ServiceCenterDTO> findByCategory(String category);
	List<ServiceCenterDTO> findnoticeindex();
}
