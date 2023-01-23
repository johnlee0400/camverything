package com.multi.camp.camping;

import java.util.List;

public interface campingService {
	List<campingDTO> campingList();
	List<campingDTO> findByCategory(String category);
	List<campingDTO> search(String data);
}
