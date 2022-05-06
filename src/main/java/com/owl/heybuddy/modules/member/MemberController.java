package com.owl.heybuddy.modules.member;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController { 
	/*
	 * @Autowired MemberServiceImpl service;
	 */
	
	
	/******************************* 관리자 *******************************/
	/******************************* 관리자 *******************************/
	/******************************* 관리자 *******************************/
	/******************************* 관리자 *******************************/
	/******************************* 관리자 *******************************/
	
	@RequestMapping(value = "/xdmin/memberList") // 회원리스트
	public String memberList() throws Exception {
		return "xdmin/member/memberList";
	}

/*	@RequestMapping(value = "/xdmin/xdminMemberList") // 회원리스트
	public String xdminMemberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Member> list = service.memberList(vo);
			model.addAttribute("list", list);
		} else {

		}
		return "xdmin/memberList";
	} */

	@RequestMapping(value = "/xdmin/memberView") // 회원뷰
	public String xdminMemberView() throws Exception {
		return "xdmin/member/memberView";
	}

	/*
	 * @RequestMapping(value = "/xdmin/xdminMemberView") // 회원뷰 public String
	 * xdminMemberView(@ModelAttribute("vo") MemberVo vo, Model model) throws
	 * Exception { Member rt = service.memberView(vo); model.addAttribute("item",
	 * rt); model.addAttribute("uploaded", service.MemberUploaded(vo)); return
	 * "xdmin/xdminMemberView"; }
	 */
	
	@RequestMapping(value = "/xdmin/memberForm") // 회원등록
	public String xdminMemberForm() throws Exception {
		return "xdmin/member/memberForm";
	}
	
	/*
	 * @RequestMapping(value = "/xdmin/xdminMemberForm") // 회원등록 public String
	 * xdminMemberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws
	 * Exception { Member rt = service.memberView(vo); model.addAttribute("item",
	 * rt); return "xdmin/xdminMemberForm"; }
	 */
	
	@RequestMapping(value = "/xdmin/memberInst") // 회원등록받음
	public String memberInst()
			throws Exception {
		return "redirect:/xdmin/member/memberView";
	}
	
	/*
	 * @RequestMapping(value = "/xdmin/memberInst") // 회원등록받음 public String
	 * memberInst(MemberVo vo, Model model, Member dto, RedirectAttributes
	 * redirectAttributes) throws Exception { service.insertMember(dto);
	 * vo.setHybdmmSeq(dto.getHybdmmSeq());
	 * redirectAttributes.addFlashAttribute("vo", vo); return
	 * "redirect:/xdmin/memberView"; }
	 */

	@RequestMapping(value = "/xdmin/memberEdit") // 회원수정
	public String memberEdit() throws Exception {
		return "xdmin/member/memberEdit";
	}

	/*
	 * @RequestMapping(value = "/xdmin/memberEdit") // 회원수정 public String
	 * memberEdit(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	 * Member rt = service.memberView(vo); model.addAttribute("item", rt); return
	 * "xdmin/memberEdit"; }
	 */
	
	@RequestMapping(value = "/xdmin/memberUpdt") // 회원수정받음
	public String memberUpdt() throws Exception {
		return "redirect:/xdmin/member/memberView";
	}
	
	/*
	 * @RequestMapping(value = "/xdmin/memberUpdt") // 회원수정받음 public String
	 * memberUpdt(@ModelAttribute("vo") Member dto, MemberVo vo) throws Exception {
	 * service.updateMember(dto); return "redirect:/xdmin/memberView"; }
	 */

	/*
	 * public String makeQueryString(MemberVo vo) { String tmp = "&thisPage=" +
	 * vo.getThisPage() + "&shOption=" + vo.getShMemberOption() + "&shMemberValue="
	 * + vo.getShMemberValue(); return tmp; }
	 */

	
	@RequestMapping(value = "/login/login") // 회원로그인
	public String memberLogin() throws Exception {
		return "/user/login/login";
	}
	
	
	@RequestMapping(value = "/login/xdminLogin") // 관리자로그인
	public String xdminLogin() throws Exception {
		return "/xdmin/login/xdminLogin";
	}
	
	/*
	 * @RequestMapping(value = "/member/memberLoginUser") // 기본로그인 public String
	 * memberLoginUser(Member dto, Model model) throws Exception { Member rt =
	 * service.selectOneLoginUser(dto); model.addAttribute("rt", rt); return
	 * "/member/memberLoginUser"; }
	 */

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/member/loginProc") // 기본로그인 PR public Map<String,
	 * Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
	 * Map<String, Object> returnMap = new HashMap<String, Object>();
	 * 
	 * Member rtMember = service.selectOneLoginUser(dto);
	 * 
	 * if (rtMember != null) { // rtMember = service.selectOneLogin(dto);
	 * 
	 * if (rtMember.getIfmmSeq() != null) { httpSession.setMaxInactiveInterval(60 *
	 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
	 * //refsession.setMaxInactiveInterval(-1); // session // time unlimited
	 * 
	 * httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
	 * httpSession.setAttribute("sessId", rtMember.getIfmmId());
	 * httpSession.setAttribute("sessName", rtMember.getIfmmName());
	 * httpSession.setAttribute("sessNickname", rtMember.getIfmmNickname());
	 * 
	 * returnMap.put("rt", "success"); } else { returnMap.put("rt", "fail"); } }
	 * else { returnMap.put("rt", "fail"); } return returnMap; }
	 */
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/member/logoutProc") // 로그아웃 public Map<String,
	 * Object> logoutProc(HttpSession httpSession) throws Exception { Map<String,
	 * Object> returnMap = new HashMap<String, Object>(); httpSession.invalidate();
	 * returnMap.put("rt", "success"); return returnMap; }
	 */

	/*
	 * @RequestMapping(value = "/xdmin/memberDele") // 회원삭제 public String
	 * memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws
	 * Exception { service.deleteMember(vo);
	 * redirectAttributes.addAttribute("thisPage", vo.getThisPage());
	 * redirectAttributes.addAttribute("shMemberOption", vo.getShMemberOption());
	 * redirectAttributes.addAttribute("shMemberValue", vo.getShMemberValue());
	 * return "redirect:/xdmin/memberList"; }
	 * 
	 * @RequestMapping(value = "/xdmin/memberNele") // 회원가짜삭제 public String
	 * memberNele(MemberVo vo, RedirectAttributes redirectAttributes) throws
	 * Exception { service.updateDeleteMember(vo);
	 * redirectAttributes.addAttribute("thisPage", vo.getThisPage());
	 * redirectAttributes.addAttribute("hybdmmSeq", vo.getHybdmmSeq());
	 * redirectAttributes.addAttribute("hybdmmDelNy", vo.getHybdmmDelNy());
	 * redirectAttributes.addAttribute("hybdmmName", vo.getHybdmmName());
	 * redirectAttributes.addAttribute("shMemberOption", vo.getShMemberOption());
	 * redirectAttributes.addAttribute("shMemberValue", vo.getShMemberValue());
	 * return "redirect:/xdmin/memberList"; }
	 * 
	 * @RequestMapping(value = "/xdmin/memberMultiDele") // 멀티 진짜삭제 public String
	 * memberMultiDele(MemberVo vo, RedirectAttributes redirectAttributes) throws
	 * Exception { String[] checkboxSeqArray = vo.getCheckboxSeqArray(); for (String
	 * checkboxSeq : checkboxSeqArray) { vo.setHybdmmSeq(checkboxSeq);
	 * service.deleteMember(vo); } redirectAttributes.addFlashAttribute("vo", vo);
	 * return "redirect:/xdmin/memberList"; }
	 * 
	 * @RequestMapping(value = "/xdmin/memberMultiNele") // 멀티 가짜삭제 public String
	 * memberMultiNele(MemberVo vo, RedirectAttributes redirectAttributes) throws
	 * Exception { String[] checkboxSeqArray = vo.getCheckboxSeqArray(); for (String
	 * checkboxSeq : checkboxSeqArray) { vo.setHybdmmSeq(checkboxSeq);
	 * service.updateDeleteMember(vo); } redirectAttributes.addFlashAttribute("vo",
	 * vo); return "redirect:/xdmin/memberList"; }
	 * 
	 * 
	 */
	
	
	/******************************* 사용자 *******************************/
	/******************************* 사용자 *******************************/
	/******************************* 사용자 *******************************/
	/******************************* 사용자 *******************************/
	/******************************* 사용자 *******************************/
	
	@RequestMapping(value = "/user/memberForm") // 회원등록
	public String memberForm() throws Exception {
		return "user/member/memberForm";
	}
	
	@RequestMapping(value = "/user/memberList")
	public String chatList(Locale locale, Model model) {

		return "user/member/memberList";
	}

	

}
