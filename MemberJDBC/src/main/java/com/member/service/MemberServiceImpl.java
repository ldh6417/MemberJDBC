package com.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.dao.MemberDAO;
import com.member.domain.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public Member login(Member member) {
		return memberDAO.login(member);
	}

	@Override
	public int insertMember(Member member) throws Exception {
		int count = memberDAO.insertMember(member);

		return count;
	}

	@Override
	public int updateMember(Member member, String oldID) throws Exception {
		int count = memberDAO.updateMember(member, oldID);
		return count;
	}

	@Override
	public int deleteMember(Member member) throws Exception {
		int count = memberDAO.deleteMember(member);
		return count;
	}

	@Override
	public List<Member> memberList() throws Exception {
		List<Member> memberdList = memberDAO.memberList();
		return memberdList;
	}

	@Override
	public Member findId(Member member) throws Exception {
		return memberDAO.findId(member);
	}

}
