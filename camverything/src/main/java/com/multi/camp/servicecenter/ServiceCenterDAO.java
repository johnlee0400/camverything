package com.multi.camp.servicecenter;

import java.util.List;

public interface ServiceCenterDAO {
	List<ServiceCenterDTO> servicelist();
	
	List<ServiceCenterDTO> findByCategory(String category);
}
