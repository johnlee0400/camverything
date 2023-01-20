package com.multi.camp.servicecenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ServiceCenterServiceImpl implements ServiceCenterService{
	ServiceCenterDAO dao;
	public ServiceCenterServiceImpl() {
		
	}
	@Autowired
	public ServiceCenterServiceImpl(ServiceCenterDAO dao) {
		super();
		this.dao = dao;
	}
	@Override
	public List<ServiceCenterDTO> serviceList() {
		return dao.serviceList();
	}
	@Override
	public ServiceCenterDTO getserviceInfo(String service_no) {
		return dao.read(service_no);
	}
	@Override
	public int update(ServiceCenterDTO service) {
		return dao.update(service);
	}
	@Override
	public int delete(String service_no) {
		return dao.delete(service_no);
	}
	@Override
	public List<ServiceCenterDTO> search(String data) {
		return dao.search(data);
	}
	@Override
	public List<ServiceCenterDTO> search(String tag, String data) {
		return dao.search(tag, data);
	}
	//http://localhost:8088/erp/service/list.do?category=%EA%B2%8C%EC%8B%9C%ED%8C%90
	@Override
	public List<ServiceCenterDTO> findByCategory(String category) {
		List<ServiceCenterDTO> list = null;
		if(category!=null) {
			if(category.equals("all")) {
				list = dao.serviceList();
			}else {
				list = dao.findByCategory(category);
			}
		}
		return list;
	}
	@Override
	public int insert(ServiceCenterDTO service,List<ServiceFileDTO> servicefiledtolist) {
		if(servicefiledtolist.size()!=0) {
			dao.insert(service);
			dao.insertFile(servicefiledtolist);
		}else {
			dao.insert(service);
		}
		return 0;
		
	}
	@Override
	public List<ServiceFileDTO> getFileList(String serviceno) {
		return dao.getFileList(serviceno);
	}
	@Override
	public ServiceFileDTO getFile(ServiceFileDTO inputdata) {
		return dao.getFile(inputdata);
	}

}















