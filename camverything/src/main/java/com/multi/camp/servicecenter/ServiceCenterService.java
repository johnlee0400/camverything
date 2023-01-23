package com.multi.camp.servicecenter;

import java.util.List;
//dao의 메소드를 호출
public interface ServiceCenterService {
	int insert(ServiceCenterDTO service, List<ServiceFileDTO> servicefiledtolist);
	//게시글등록 
	List<ServiceCenterDTO> serviceList();
	//게시글상세조회
	ServiceCenterDTO getserviceInfo(String service_no);
	//게시글수정
	int update(ServiceCenterDTO service);
	//게시글삭제
	int delete(String service_no);
	//제목으로 검색
	List<ServiceCenterDTO> search(String data);
	//제목,작성자, 본문, 작성일별로 검색
	List<ServiceCenterDTO> search(String tag,String data);
	List<ServiceCenterDTO> findByCategory(String category);
	List<ServiceCenterDTO> findnoticeindex();
	
	List<ServiceFileDTO> getFileList(String serviceno);
	ServiceFileDTO getFile(ServiceFileDTO inputdata);
}
