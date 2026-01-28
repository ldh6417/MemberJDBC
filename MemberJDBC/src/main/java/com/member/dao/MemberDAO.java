package com.member.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.member.domain.Member;

@Repository
public class MemberDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int insertMember(Member member) {
		String query = "insert into  MEMBER values(MEMBER_seq.nextval,?,?,?)";

		int count = jdbcTemplate.update(query, member.getName(), member.getID(), member.getPassword());

		return count;
	}

	// 로그인 처리
	public Member login(Member member) {
		String query = "SELECT NAME, ID, PASSWORD FROM MEMBER WHERE ID = ? AND PASSWORD = ?";
		try {
			return jdbcTemplate.queryForObject(query, new Object[] { member.getID(), member.getPassword() },
					(rs, rowNum) -> {
						Member m = new Member();
						m.setName(rs.getString("NAME"));
						m.setID(rs.getString("ID"));
						m.setPassword(rs.getString("PASSWORD"));
						return m;
					});
		} catch (Exception e) {
			return null; // 로그인 실패
		}
	}

	// 아이디 수정
	// 회원 정보 수정 (아이디 포함)
	public int updateMember(Member member, String oldID) {

		String query = "UPDATE MEMBER SET NAME = ?, ID = ?, PASSWORD = ? WHERE ID = ?";

		return jdbcTemplate.update(query, member.getName(), member.getID(), // 새 아이디
				member.getPassword(), member.getOldID() // 기존 아이디로 찾기
		);
	}
///////회원 삭제
	public int deleteMember(Member member) {
		String query = "DELETE FROM MEMBER WHERE ID=?";
		return jdbcTemplate.update(query, member.getID());
	}
	

	public List<Member> memberList() {

		String query = "SELECT * FROM MEMBER";

		List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {

			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {

				Member member = new Member();
			    
			    member.setNo(rs.getInt("MEMBER_NO"));
				member.setName(rs.getString("NAME"));
				member.setID(rs.getString("ID"));
				member.setPassword(rs.getString("PASSWORD"));

				return member;
			}
		});

		return memberList;
	}

}
