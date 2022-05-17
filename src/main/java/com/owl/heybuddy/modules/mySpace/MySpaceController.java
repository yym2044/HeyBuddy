package com.owl.heybuddy.modules.mySpace;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MySpaceController {

	@Autowired
	MySpaceServiceImpl service;

	@RequestMapping(value = "/user/myProfile")
	public String myProfile() throws Exception {
		return "/user/member/myProfile";
	}

	/******************************* 호스트 메뉴 Start *******************************/

	@RequestMapping(value = "/setting/profile")
	public String profile() throws Exception {

		return "user/setting/profile";
	}

	@RequestMapping(value = "/setting/space")
	public String space() throws Exception {

		return "user/setting/space";
	}

	/******************************* 호스트 메뉴 End *******************************/

	@RequestMapping(value = "/mySpace/mySpaceList")
	public String mySpaceList(MySpaceVo vo, Model model, HttpSession httpSession) throws Exception {
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		List<MySpace> list = service.selectListMySpace(vo);
		model.addAttribute("list", list);
		
		vo.setHyspSeq(vo.getHyspSeq());
		vo.setHyspName(vo.getHyspName());
		

		return "user/mySpace/mySpaceList";
	}

	@RequestMapping(value = "/mySpace/mySpaceForm")
	public String mySpaceForm() throws Exception {

		return "user/mySpace/mySpaceForm";
	}

	@RequestMapping(value = "/mySpace/mySpaceInst")
	public String mySpaceInst(MySpaceVo vo, MySpace dto, Model model,
			RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {

		service.insertMySpace(dto);
		
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));

		vo.setHyspSeq(dto.getHyspSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/mySpace/mySpaceForm2";
	}

	@RequestMapping(value = "/mySpace/mySpaceForm2")
	public String mySpaceForm2(@ModelAttribute("vo") MySpaceVo vo, Model model) throws Exception {

		System.out.println("vo.getHymmSeq :" + vo.getHymmSeq());
		System.out.println("vo.getHymmName :" + vo.getHymmName());
		System.out.println("vo.getHyspSeq :" + vo.getHyspSeq());
		System.out.println("vo.getHyspName :" + vo.getHyspName());

		MySpace rt = service.selectOneMySpace(vo);
		model.addAttribute("item", rt);

		return "user/mySpace/mySpaceForm2";
	}

	@RequestMapping(value = "/mySpace/mySpaceInstMember")
	public String mySpaceInstMember(MySpaceVo vo, MySpace dto, Model model,
			RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {

		service.insertMySpaceMember(dto);
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));

		vo.setHyspSeq(dto.getHyspSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/mySpace/mySpaceList";
	}

	@RequestMapping(value = "/mySpace/mySpaceReceive")
	public String mySpaceReceive(@ModelAttribute("vo") MySpaceVo vo, Model model, HttpSession httpSession) throws Exception {
		
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));
		
		vo.setHyspSeq(vo.getHyspSeq());
		vo.setHyspName(vo.getHyspName());
		vo.setHymmSeq(vo.getHymmSeq());
		
		int totalMembers = service.selectOneCount(vo);
		vo.setTotalMembers(totalMembers);
		
		MySpace rt = service.selectOneReceive(vo);
		model.addAttribute("item", rt);
		
		return "user/mySpace/mySpaceReceive";
	}

	@RequestMapping(value = "/mySpace/mySpaceReceiveList")
	public String mySpaceReceiveList(@ModelAttribute("vo") MySpaceVo vo, Model model, HttpSession httpSession) throws Exception {
		
	
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));

		
		List<MySpace> list = service.selectListReceive(vo);
		model.addAttribute("list", list);
	
		System.out.println("vo.getHymmSeq :" + vo.getHymmSeq());
		System.out.println("vo.getHymmName :" + vo.getHymmName());
		
		
		return "user/mySpace/mySpaceReceiveList";
	}

	@RequestMapping(value = "/mySpace/mySpaceSend")
	public String mySpaceSend() throws Exception {

		return "user/mySpace/mySpaceSend";
	}

	@RequestMapping(value = "/mySpace/mySpaceSendList")
	public String mySpaceSendList() throws Exception {

		return "user/mySpace/mySpaceSendList";
	}
}
