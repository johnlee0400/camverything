package com.multi.camp.reservation;

import java.util.List;

public interface ReservationDAO {
	int insert(ReservationDTO dto); //예약등록
	List<ReservationDTO> getcampDate(ReservationDTO dto); //예약할때 캠프데이트 가져오기
	
}
