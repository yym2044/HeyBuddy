package com.owl.heybuddy.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.owl.heybuddy.common.constants.Constants;
@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	/******************************* 관리자 *******************************/

	@RequestMapping(value = "/xdmin/memberList") // 회원리스트
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Member> list = service.memberList(vo);
			model.addAttribute("list", list);
		} else {

		}
		return "xdmin/member/memberList";
	}

	@RequestMapping(value = "/xdmin/memberView") // 회원뷰
	public String xdminMemberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member rt = service.memberView(vo);
		model.addAttribute("item", rt);
		model.addAttribute("uploaded", service.profileUploaded(vo));
		return "xdmin/member/memberView";
	}


	@RequestMapping(value = "/xdmin/memberForm") // 회원등록 
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	Member rt = service.memberView(vo); model.addAttribute("item", rt); 
	model.addAttribute("item", rt);
	return "xdmin/member/memberForm"; 
	}


	 @RequestMapping(value = "/xdmin/memberInst") // 회원등록받음 
	 public String memberInst(MemberVo vo, Model model, Member dto, RedirectAttributes redirectAttributes) throws Exception {
	 service.insertMember(dto);
	 vo.setHymmSeq(dto.getHymmSeq());
	 redirectAttributes.addFlashAttribute("vo", vo); 
	 return "redirect:/xdmin/memberView";
	 }
	 
		
	
	@RequestMapping(value = "/xdmin/memberEdit") // 회원수정 
	 public String memberEdit(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	 Member rt = service.memberView(vo); 
	 model.addAttribute("item", rt); 
	 return "xdmin/member/memberEdit"; 
	 }

	
	 @RequestMapping(value = "/xdmin/memberUpdt") // 회원수정받음 
	 public String  memberUpdt(@ModelAttribute("vo") Member dto, MemberVo vo) throws Exception {
	 service.updateMember(dto); 

	 return "redirect:/xdmin/memberView"; 
	 }



	  public String makeQueryString(MemberVo vo) { String tmp = "&thisPage=" +
	  vo.getThisPage() + "&shOption=" + vo.getShMemberOption() + "&shMemberValue="
	 + vo.getShMemberValue(); return tmp; }
	 

	@RequestMapping(value = "/login/userLogin") // 회원로그인
	 public String userLogin(Member dto, Model model) throws Exception { 
		return "/user/login/login";
	}

	@RequestMapping(value = "/login/xdminLogin") // 관리자로그인
	public String xdminLogin() throws Exception {
		return "/xdmin/login/xdminLogin";
	}


	
	 @ResponseBody
	 @RequestMapping(value = "/member/loginProc") // 기본로그인 PR 
	 public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
	 Map<String, Object> returnMap = new HashMap<String, Object>();
	 Member rtMember = service.selectOneLogin(dto);
	 if (rtMember != null) { 
	 if (rtMember.getHymmSeq() != null) { httpSession.setMaxInactiveInterval(60 *
	 Constants.SESSION_MINUTE); 

	 
	 httpSession.setAttribute("sessSeq", rtMember.getHymmSeq());
	 httpSession.setAttribute("sessId", rtMember.getHymmId());
	 httpSession.setAttribute("sessName", rtMember.getHymmName());
	 httpSession.setAttribute("uuidFileName", rtMember.getUuidFileName());
	 httpSession.setAttribute("path", rtMember.getPath());
	 
	 returnMap.put("rt", "success"); } else { returnMap.put("rt", "fail"); } }
	 else { returnMap.put("rt", "fail"); } return returnMap; }
	 


	 @ResponseBody
	 @RequestMapping(value = "/member/logoutProc") // 로그아웃 
	 public Map<String,Object> logoutProc(HttpSession httpSession) throws Exception {
	 Map<String, Object> returnMap = new HashMap<String, Object>(); httpSession.invalidate();
	 returnMap.put("rt", "success"); 
	 return returnMap; 
	 }


	
	  @RequestMapping(value = "/xdmin/memberDele") // 회원삭제 
	  public String memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception { 
	 service.deleteMember(vo); redirectAttributes.addAttribute("thisPage", vo.getThisPage());
	 redirectAttributes.addAttribute("shMemberOption", vo.getShMemberOption());
	 redirectAttributes.addAttribute("shMemberValue", vo.getShMemberValue());
	 return "redirect:/xdmin/member/memberList"; 
	 }


	 @RequestMapping(value = "/xdmin/memberNele") // 회원가짜삭제 
	 public String memberNele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception { 
	 service.updateDeleteMember(vo);
	 redirectAttributes.addAttribute("thisPage", vo.getThisPage());
	 redirectAttributes.addAttribute("hybdmmSeq", vo.getHymmSeq());
	 redirectAttributes.addAttribute("hybdmmDelNy", vo.getHymmDelNy());
	 redirectAttributes.addAttribute("hybdmmName", vo.getHymmName());
	 redirectAttributes.addAttribute("shMemberOption", vo.getShMemberOption());
	 redirectAttributes.addAttribute("shMemberValue", vo.getShMemberValue());
	 return "redirect:/xdmin/member/memberList"; 
	 }
	 

	/******************************* 사용자 *******************************/


	@RequestMapping(value = "/user/memberForm") // 회원등록
	public String memberForm() throws Exception {
		return "user/member/memberForm";
	}

	@RequestMapping(value = "/user/memberList")
	public String chatList(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {
		
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));
		
		
		System.out.println("vo.getHymmSeq :" + vo.getHymmSeq());
		System.out.println("vo.getHymmName :" + vo.getHymmName());
		System.out.println("vo.getHyspSeq :" + vo.getHyspSeq());
		System.out.println("vo.getHyspName :" + vo.getHyspName());
		
		List<Member> list = service.selectListSpaceMember(vo);
		model.addAttribute("list", list);
		
		Member rt = service.selectOneSidebar(vo);
		model.addAttribute("item", rt);
		
		// 스페이스 입장 하면서 세션에 스페이스Seq 값 세팅
//		httpSession.setAttribute("hyspSeq", vo.getHyspSeq());
//		if(rt.getHysmRoleCd() == 12) {
//			httpSession.setAttribute("", rt)
//		}
		//
		
		return "user/member/memberList";
	}

	/******************************* 호스트 메뉴 Start *******************************/

	@RequestMapping(value = "/setting/authEdit")
	public String authEdit() {

		return "/user/setting/authEdit";
	}

	@RequestMapping(value = "/setting/authForm")
	public String authForm() {

		return "user/setting/authForm";
	}

	@RequestMapping(value = "/setting/authList")
	public String authList() {

		return "user/setting/authList";
	}

	@RequestMapping(value = "/setting/group")
	public String group() {

		return "user/setting/group";
	}

	@RequestMapping(value = "/setting/memberEdit")
	public String memberEditHost(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		//임시로 스페이스 지정
		vo.setHyspSeq("1");
		
		Member rt = service.selectOneMemberInSpace(vo);
		model.addAttribute("item", rt);
		model.addAttribute("uploaded", service.profileUploaded(vo));
		
		return "user/setting/memberEdit";
	}

	@RequestMapping(value = "/setting/memberForm")
	public String memberFormHost(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		model.addAttribute("space", service.selectOneSpace(vo));

		return "user/setting/memberForm";
	}
	
	@RequestMapping(value = "/setting/memberInst")
	public String memberInstHost(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		//임시로 스페이스 지정
		dto.setHyspSeq("1");
		
		service.insertMemberInSpace(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/setting/memberList";
		
	}

	@RequestMapping(value = "/setting/memberList")
	public String memberListHost(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		//임시로 스페이스 지정
		vo.setHyspSeq("1");
		
		int count = service.selectOneCountMemberInSpace(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Member> list = service.selectListMemberInSpace(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}
		
		
		return "user/setting/memberList";
	}

	@RequestMapping(value = "/setting/memberView")
	public String memberViewHost(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		//임시로 스페이스 지정
		vo.setHyspSeq("1");
		
		Member rt = service.selectOneMemberInSpace(vo);
		model.addAttribute("item", rt);
		model.addAttribute("uploaded", service.profileUploaded(vo));
		
		return "user/setting/memberView";
	}

	/******************************* 호스트 메뉴 End *******************************/

}
