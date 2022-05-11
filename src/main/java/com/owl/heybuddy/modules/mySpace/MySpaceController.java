package com.owl.heybuddy.modules.mySpace;

import java.util.List;

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
	public String myProfile() {
		return "/user/member/myProfile";
	}

	/******************************* 호스트 메뉴 Start *******************************/

	@RequestMapping(value = "/setting/profile")
	public String profile() {

		return "user/setting/profile";
	}

	@RequestMapping(value = "/setting/space")
	public String space() {

		return "user/setting/space";
	}

	/******************************* 호스트 메뉴 End *******************************/

	@RequestMapping(value = "/mySpace/mySpaceForm")
	public String mySpaceForm(@ModelAttribute("vo") MySpaceVo vo, MySpace dto, Model model) throws Exception {
		
		List<MySpace> list = service.selectListMySpace(vo);
		model.addAttribute("list", list);
		
		return "user/mySpace/mySpaceForm";
	}
	

	@RequestMapping(value = "/mySpace/mySpaceInst")
	public String durianInst(MySpace dto, MySpaceVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {

		dto.getHyspSeq();
		service.insertMySpace(dto);
		

		List<MySpace> list = service.selectListMySpace(vo);
		model.addAttribute("list", list);

		vo.setHyspSeq(dto.getHyspSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/mySpace/mySpaceList";
	}
	

	@RequestMapping(value = "/mySpace/mySpaceList")
	public String mySpaceList(MySpaceVo vo, Model model) throws Exception {
		
		List<MySpace> list = service.selectListMySpace(vo);
		model.addAttribute("list", list);
		
		return "user/mySpace/mySpaceList";
	}

	@RequestMapping(value = "/mySpace/mySpaceReceive")
	public String mySpaceReceive() {

		return "user/mySpace/mySpaceReceive";
	}

	@RequestMapping(value = "/mySpace/mySpaceReceiveList")
	public String mySpaceReceiveList() {

		return "user/mySpace/mySpaceReceiveList";
	}

	@RequestMapping(value = "/mySpace/mySpaceSend")
	public String mySpaceSend() {

		return "user/mySpace/mySpaceSend";
	}

	@RequestMapping(value = "/mySpace/mySpaceSendList")
	public String mySpaceSendList() {

		return "user/mySpace/mySpaceSendList";
	}
}
