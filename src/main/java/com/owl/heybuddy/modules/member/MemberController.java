package com.owl.heybuddy.modules.member;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String memberView(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {

		Member rt = service.memberView(vo);
		model.addAttribute("item", rt);
		model.addAttribute("uploaded", service.profileUploaded(vo));
		return "xdmin/member/memberView";
	}

	@RequestMapping(value = "/xdmin/memberForm") // 회원등록
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member rt = service.memberView(vo);
		model.addAttribute("item", rt);
		return "xdmin/member/memberForm";
	}

	@RequestMapping(value = "/xdmin/memberInst") // 회원등록받음
	public String memberInst(MemberVo vo, Model model, Member dto, RedirectAttributes redirectAttributes)
			throws Exception {
		service.insertMember(dto);
		vo.setHymmSeq(dto.getHymmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/xdmin/memberView";
	}

	@RequestMapping(value = "/xdmin/memberEdit") // 회원수정
	public String memberEdit(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member rt = service.memberView(vo);
		model.addAttribute("item", rt);
		model.addAttribute("uploaded", service.profileUploaded(vo));

		return "xdmin/member/memberEdit";
	}

	@RequestMapping(value = "/xdmin/memberUpdt") // 회원수정받음
	public String memberUpdt(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.updateMember(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/xdmin/memberView";
	}

	@RequestMapping(value = "/login/userLogin") // 회원로그인
	public String userLogin(Member dto, Model model) throws Exception {
		return "/user/login/login";
	}

	@RequestMapping(value = "/login/xdminLogin") // 관리자로그인
	public String xdminLogin(Member dto, Model model) throws Exception {
		return "/xdmin/login/xdminLogin";
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProcKakao")
	public Map<String, Object> loginProcKakao(Member dto, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<>();
		Member rtMember = service.selectOneLoginKakao(dto);
		
		if(rtMember != null) {
			if(rtMember.getHymmSeq() != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);

				httpSession.setAttribute("sessSeq", rtMember.getHymmSeq());
				httpSession.setAttribute("sessAdminNy", rtMember.getHymmAdminNy());
				httpSession.setAttribute("sessId", rtMember.getHymmId());
				httpSession.setAttribute("sessName", rtMember.getHymmName());
				httpSession.setAttribute("sessEmail", rtMember.getHymmEmail());
				httpSession.setAttribute("uuidFileName", rtMember.getUuidFileName());
				httpSession.setAttribute("path", rtMember.getPath());

				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping(value = "/member/loginProc") // 기본로그인 PR
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Member rtMember = service.selectOneLogin(dto);
		if (rtMember != null) {
			if (rtMember.getHymmSeq() != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);

				httpSession.setAttribute("sessSeq", rtMember.getHymmSeq());
				httpSession.setAttribute("sessAdminNy", rtMember.getHymmAdminNy());
				httpSession.setAttribute("sessId", rtMember.getHymmId());
				httpSession.setAttribute("sessName", rtMember.getHymmName());
				httpSession.setAttribute("sessEmail", rtMember.getHymmEmail());
				httpSession.setAttribute("uuidFileName", rtMember.getUuidFileName());
				httpSession.setAttribute("path", rtMember.getPath());

				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping(value = "/member/logoutProc") // 로그아웃
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

	@RequestMapping(value = "/xdmin/memberDele") // 회원삭제
	public String memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.deleteMember(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shMemberOption", vo.getShMemberOption());
		redirectAttributes.addAttribute("shMemberValue", vo.getShMemberValue());
		return "redirect:/xdmin/member/memberList";
	}

	@RequestMapping(value = "/xdmin/memberNele") // 회원가짜삭제
	public String memberNele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.updateDeleteMember(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("hymmSeq", vo.getHymmSeq());
		redirectAttributes.addAttribute("hymmDelNy", vo.getHymmDelNy());
		redirectAttributes.addAttribute("hymmName", vo.getHymmName());
		redirectAttributes.addAttribute("shMemberOption", vo.getShMemberOption());
		redirectAttributes.addAttribute("shMemberValue", vo.getShMemberValue());
		return "redirect:/xdmin/memberList";
	}

	/******************************* 사용자 *******************************/

	@RequestMapping(value = "/user/memberForm") // 회원등록
	public String memberForm(@ModelAttribute("dto") Member dto) throws Exception {
		
		return "user/member/memberForm";
	}

	@RequestMapping(value = "/user/memberSignUp") // 회원등록
	public String memberSignUp(MemberVo vo, Member dto, Model model, RedirectAttributes redirectAttributes)
			throws Exception {

		service.insertSignUp(dto);

		vo.setHymmSeq(dto.getHymmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/login/userLogin";
	}
	
	@ResponseBody
	@RequestMapping(value = "/user/memberListAjax")
	public Map<String, Object> memberListAjax(MemberVo vo, HttpSession httpSession) throws Exception {
		
		Map<String, Object> resultMap = new HashMap<>();

		List<Member> list = service.selectListSpaceMember(vo);
		
		resultMap.put("list", list);
		
		return resultMap;
	}
	

	@RequestMapping(value = "/user/memberList")
	public String chatList(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {

		if (vo.getHyspSeq() != null) {
			httpSession.setAttribute("hyspSeq", vo.getHyspSeq());
		}

		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));

		int totalMembers = service.selectOneCountSpaceMember(vo);
		vo.setTotalRows(totalMembers);

		List<Member> list = service.selectListSpaceMember(vo);
		model.addAttribute("list", list);
  
		Member rt = service.selectOneSidebar(vo);
		model.addAttribute("item", rt);

//		스페이스 입장 하면서 세션에 스페이스이름 값 세팅 => 사이드바 include 파일에서 활용
		httpSession.setAttribute("hyspName", rt.getHyspName());
		// 스페이스 색상 추가
		httpSession.setAttribute("hyspColorCd", rt.getHyspColorCd());

		if (rt.getHysmRoleCd() == 12) {
			httpSession.setAttribute("hostNy", 1);
		} else {
			httpSession.setAttribute("hostNy", 0);
		}
		
		httpSession.setAttribute("sessAuth", rt.getHysmAuthCd());
		
		return "user/member/memberList";
	}

	@RequestMapping(value = "/user/myProfile")
	public String myProfile(Model model, MemberVo vo, HttpSession httpSession) throws Exception {

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));

		model.addAttribute("rt", service.selectOneMemberInSpace(vo));

		return "/user/member/myProfile";
	}

	@RequestMapping(value = "/user/myProfile2") // 프로필예시
	public String myProfile2(Model model, MemberVo vo, HttpSession httpSession) throws Exception {

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));

		model.addAttribute("rt", service.selectOneMemberInSpace(vo));

		return "/user/member/myProfile2";
	}

	@RequestMapping(value = "/user/myProfileUpdt")
	public String myProfileUpdt(Member dto, HttpSession httpSession) throws Exception {

		service.updateMemberProfile(dto);

		httpSession.setAttribute("uuidFileName", dto.getUuidFileName());
		httpSession.setAttribute("path", dto.getPath());

		return "redirect:/user/myProfile";
	}

	/******************************* 호스트 메뉴 Start *******************************/

	@RequestMapping(value = "/setting/authEdit")
	public String authEdit(Model model, MemberVo vo, HttpSession httpSession) throws Exception{

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		
		model.addAttribute("rt", service.selectOneMemberInSpace(vo));
		
		return "/user/setting/authEdit";
	}

	@RequestMapping(value = "/setting/authForm")
	public String authForm(Model model, MemberVo vo, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		
		List<Member> list = service.selectListMemberInSpace(vo);
		model.addAttribute("list", list);

		return "user/setting/authForm";
	}
	
	@RequestMapping(value = "/setting/authUpdt")
	public String authUpdt(Member dto, HttpSession httpSession) throws Exception {
		
		service.updateMemberAuth(dto);
		
		System.out.println(httpSession.getAttribute("sessSeq"));
		System.out.println(dto.getHymmSeq());
		
		if(httpSession.getAttribute("sessSeq").equals(dto.getHymmSeq())) {
			return "redirect:/user/memberList";
		} else {
			return "redirect:/setting/authList";
		}
	}

	@RequestMapping(value = "/setting/authList")
	public String authList(Model model, MemberVo vo, HttpSession httpSession) throws Exception {

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));

		int count = service.selectOneCountMemberInSpace(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Member> list = service.selectListMemberInSpace(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}

		return "user/setting/authList";
	}
	
	// 프로필 카드 정보 뽑기용 아작스
	@ResponseBody
	@RequestMapping(value = "/user/selectOneAjax")
	public Member selectOneAjax(MemberVo vo, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		
		Member rt = service.selectOneMemberInSpace(vo);
		
		return rt;
	}

	@RequestMapping(value = "/setting/group")
	public String group() {

		return "user/setting/group";
	}

	@RequestMapping(value = "/setting/memberEdit")
	public String memberEditHost(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession)
			throws Exception {

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));

		Member rt = service.selectOneMemberInSpace(vo);
		model.addAttribute("item", rt);
		model.addAttribute("uploaded", service.profileUploaded(vo));

		return "user/setting/memberEdit";
	}
	
	@RequestMapping(value = "/setting/memberUpdt")
	public String memberUpdtSetting(Member dto, MemberVo vo, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		
		service.updateMemberSetting(dto);
		
		vo.setHymmSeq(dto.getHymmSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/setting/memberView";
	}

	@RequestMapping(value = "/setting/memberForm")
	public String memberFormHost(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		model.addAttribute("space", service.selectOneSpace(vo));

		return "user/setting/memberForm";
	}

	@RequestMapping(value = "/setting/memberInst")
	public String memberInstHost(Member dto, MemberVo vo, HttpSession httpSession,
			RedirectAttributes redirectAttributes) throws Exception {

		dto.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));

		service.insertMemberInSpace(dto);

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/setting/memberList";

	}
	
	@RequestMapping(value = "/member/excelDownload")
	public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse, HttpSession httpSession) throws Exception {
		
		String[] arr = vo.getCheckboxExcelArray();
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		
		int count = service.selectOneCountMemberInSpace(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<Member> list = service.selectListMemberInSpace(vo);
			
			Workbook wb = new XSSFWorkbook();
			Sheet sheet = wb.createSheet("1st sheet");
			Row row = null;
			Cell cell = null;
			int rowNum = 0;
			
			// Header
			row = sheet.createRow(rowNum++);
			
			int col = 1;
			
			cell = row.createCell(0);
			cell.setCellValue("번호");
			if(Arrays.asList(arr).contains("1")) {
				cell = row.createCell(col++);
				cell.setCellValue("아이디");
			}
			if(Arrays.asList(arr).contains("2")) {
				cell = row.createCell(col++);
				cell.setCellValue("이름");
			}
			if(Arrays.asList(arr).contains("3")) {
				cell = row.createCell(col++);
				cell.setCellValue("이메일");
			}
			if(Arrays.asList(arr).contains("4")) {
				cell = row.createCell(col++);
				cell.setCellValue("휴대전화");
			}
			if(Arrays.asList(arr).contains("5")) {
				cell = row.createCell(col++);
				cell.setCellValue("성별");
			}
			if(Arrays.asList(arr).contains("6")) {
				cell = row.createCell(col++);
				cell.setCellValue("생년월일");
			}
			
			// Body
			
			for(int i = 0; i < list.size(); i++) {
				col = 1;
				row = sheet.createRow(rowNum++);
				
				cell = row.createCell(0);
				cell.setCellValue(String.valueOf(list.get(i).getHymmSeq()));
				
				if(Arrays.asList(arr).contains("1")) {
					cell = row.createCell(col++);
					cell.setCellValue(list.get(i).getHymmId());
				}
				if(Arrays.asList(arr).contains("2")) {
					cell = row.createCell(col++);
					cell.setCellValue(list.get(i).getHymmName());
				}
				if(Arrays.asList(arr).contains("3")) {
					cell = row.createCell(col++);
					cell.setCellValue(list.get(i).getHymmEmail());
				}
				if(Arrays.asList(arr).contains("4")) {
					cell = row.createCell(col++);
					cell.setCellValue(list.get(i).getHymmNumber());
				}
				if(Arrays.asList(arr).contains("5")) {
					cell = row.createCell(col++);
					cell.setCellValue(list.get(i).getRegDateTime());
				}
				if(Arrays.asList(arr).contains("6")) {
					cell = row.createCell(col++);
					cell.setCellValue(list.get(i).getHymmDob());
				}
				
			}
			
			// 컨텐츠 타입과 파일명 지정
			httpServletResponse.setContentType("ms-vnd/excel");
			
			String fileName = new String(vo.getExcelFileName().getBytes("UTF-8"), "ISO-8859-1");
			
			// response.setHeader("Content-Disposition", "attachment;filename=example.xls");
			httpServletResponse.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xlsx");
			
			// Excel File Output
			wb.write(httpServletResponse.getOutputStream());
			wb.close();
			
		} else {
			// by pass
		}
		
		
		
	}

	@RequestMapping(value = "/setting/memberList")
	public String memberListHost(@ModelAttribute("vo") MemberVo vo, HttpSession httpSession, Model model)
			throws Exception {

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));

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
	public String memberViewHost(@ModelAttribute("vo") MemberVo vo, Member dto, HttpSession httpSession, Model model)
			throws Exception {

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		
		System.out.println("------------------------------------------");
		System.out.println(dto.getHymmSeq());
		System.out.println("------------------------------------------");
		
		Member rt = service.selectOneMemberInSpace(vo);
		model.addAttribute("item", rt);
		model.addAttribute("uploaded", service.profileUploaded(vo));

		return "user/setting/memberView";
	}
	
	@RequestMapping(value = "/setting/deleteMemberFromMySpace")
	public String deleteMemberFromMySpace(MemberVo vo, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		
		service.deleteMemberFromMySpace(vo);
		
		return "redirect:/setting/memberList";
	}

	/******************************* 호스트 메뉴 End *******************************/
	
	@RequestMapping(value = "/login/setPassword/{hymmEmail}")
	public String setPasswordRedirect(@PathVariable String hymmEmail, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		
		vo.setHymmEmail(hymmEmail);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/login/setPassword";
	}
	
	@RequestMapping(value = "/login/setPassword")
	public String setPassword(Model model, @ModelAttribute("vo") MemberVo vo) throws Exception {
		
		return "/user/login/setPassword";
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/updatePwd") // 비밀번호 설정 후 로그인페이지로! (ajax)
	public Map<String, Object> updatePwd(MemberVo vo, Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneMemberWithEmail(vo);

		dto.setHymmSeq(rtMember.getHymmSeq());
		
		if (rtMember.getHymmSeq() != null) {

			if(service.updateMemberPwd(dto) > 0) {
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
			
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	

}
