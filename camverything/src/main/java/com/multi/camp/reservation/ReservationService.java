package com.multi.camp.reservation;

import java.util.List;

import com.multi.camp.manager.GoCampingDTO;

public interface ReservationService {
	int insert(ReservationDTO dto); //예약등록
	List<ReservationDTO> getcampDate(ReservationDTO dto); //예약할때 캠프데이트 가져오기
	int cancel();//예약취소
	GoCampingDTO getGoCampingDataByfacltNm(String facltNm);
}
