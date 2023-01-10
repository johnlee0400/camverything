package com.multi.camp.servicecenter;

import java.util.List;

public interface ServiceCenterService {
	List<ServiceCenterDTO> servicelist();
	
	List<ServiceCenterDTO> findByCategory(String category);
}
