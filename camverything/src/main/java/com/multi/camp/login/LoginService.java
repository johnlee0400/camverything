package com.multi.camp.member;


import org.springframework.stereotype.Service;

@Service
public interface MemberService {
	public MemberDTO login(MemberDTO dto);
}
