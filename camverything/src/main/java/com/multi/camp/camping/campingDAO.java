package com.multi.camp.camping;

import java.util.List;

public interface campingDAO {
	List<campingDTO> campingList();
	List<campingDTO> search(String data);
}
