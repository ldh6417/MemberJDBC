package com.member.service;

import java.util.List;

import com.member.domain.Member;

public interface MemberService {
	
	public Member login(Member member)throws Exception;
	
	public int insertMember(Member member)throws Exception;

	public int updateMember(Member member, String oldID)throws Exception;

	public int deleteMember(Member member)throws Exception;

	public List<Member> memberList() throws Exception;

	
	
	
}
