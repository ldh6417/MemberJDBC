package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.domain.Member;
import com.member.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;

///////////////////// 로그인 페이지//////////////////////////////////
	// 로그인 화면
	@GetMapping("/login")
	public String loginForm() {
		return "member/login";
	}

	@PostMapping("/login")
	public String login(Member member, Model model) {
		try {
			Member loginMember = memberService.login(member);
			if (loginMember != null) {
				// ⭐ JSP로 로그인한 회원 정보 전달
				model.addAttribute("loginMember", loginMember);
				return "member/loginSuccess";
			} else {
				return "member/loginFailed";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "member/loginFailed";
		}
	}

/////////////////////회원가입//////////////////////////////////////////////////	

	@GetMapping("/insert")
	public String insertForm(Model model) {
		return "member/insertMember";
	}

	@PostMapping("/insert")
	public String memberInsert(Member member, Model model) {
		log.info("insert member = " + member.toString());
		try {
			int count = memberService.insertMember(member);
			if (count > 0) {
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/failed";
	}

//////////////////////////// 정보 수정//////////////////////////////////
	@GetMapping("/update")
	public String updateForm(Member member, Model model) {

		// URL 파라미터로 넘어온 값 그대로 사용
		model.addAttribute("loginMember", member);

		return "member/updateMember";
	}

	@PostMapping("/update")
	public String updateMember(Member member, String oldID) {

		try {
			memberService.updateMember(member, oldID);
			return "member/loginSuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "member/loginFailed";
		}
	}

///////////////////////정보 삭제////////////////////////////
	@PostMapping("/delete")
	public String memberDelete(Member member) {

		try {
			int count = memberService.deleteMember(member);

			if (count > 0) {
				return "member/deleteSuccess";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "member/loginSuccess"; // 실패 시 그냥 복귀
	}

///////////////////////회원 리스트////////////////////////////

	@GetMapping("/list")
	public String memberList(Model model) {

		try {
			List<Member> memberList = memberService.memberList();

			model.addAttribute("memberList", memberList);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "member/memberList";
	}

	//////////// 회원 찾기///////////////////////////
	// 아이디 찾기 화면
	@GetMapping("/findId")
	public String findIdForm() {
		return "member/findId";
	}

	// 아이디 찾기 처리 
	@PostMapping("/findId")
	public String findId(Member member, Model model) {

		try {
			Member findMember = memberService.findId(member);
			model.addAttribute("findMember", findMember);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "member/findIdResult";
	}

}
