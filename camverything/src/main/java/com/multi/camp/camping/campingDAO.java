package com.multi.camp.camping;

import java.util.List;

public interface campingDAO {
	List<campingDTO> campingList();
	List<campingDTO> findByCategory(String category);
	List<campingDTO> search(String data);
	List<campingDTO> search2(String search, String local);
}
