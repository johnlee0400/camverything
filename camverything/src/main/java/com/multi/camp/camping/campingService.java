package com.multi.camp.camping;

import java.util.List;

public interface campingService {
	List<campingDTO> campingList();
	List<campingDTO> search(String data);
}
