package com.multi.camp.reservation;

import java.util.List;

import com.multi.camp.manager.GoCampingDTO;

public interface ReservationDAO {
	int insert(ReservationDTO dto); //예약등록
	List<ReservationDTO> getcampDate(ReservationDTO dto); //예약할때 캠프데이트 가져오기
	int cancel(String camp_date); //예약취소
	int mypageCancel(int res_no); //예약취소 마이페이지쪽
	GoCampingDTO getGoCampingDataByfacltNm(String facltNm);
	List<ReservationDTO> getResDataById(String id); //마이페이지 예약데이터가져오기
}
