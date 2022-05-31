package com.owl.heybuddy.modules.mySpace;

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

@Controller
public class MySpaceController {

	@Autowired
	MySpaceServiceImpl service;

	/******************************* 호스트 메뉴 Start *******************************/

	@RequestMapping(value = "/setting/profile")
	public String profile() throws Exception {

		return "user/setting/profile";
	}

	@RequestMapping(value = "/setting/space")
	public String space(Model model, MySpaceVo vo, HttpSession httpSession) throws Exception {

		httpSession.setAttribute("sessAuth", httpSession.getAttribute("sessAuth"));

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));

		model.addAttribute("space", service.selectOneMySpaceHost(vo));

		return "user/setting/space";
	}

	@RequestMapping(value = "/setting/updateMySpaceHost")
	public String updateMySpaceHost(MySpace dto, HttpSession httpSession) throws Exception {

		dto.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		service.updateMySpaceHost(dto);

		httpSession.setAttribute("hyspName", dto.getHyspName());

		return "redirect:/setting/space";
	}
	
	@RequestMapping(value = "/setting/deleteMySpace")
	public String deleteMySpace(MySpaceVo vo) throws Exception {
		
		service.ueleteMySpace(vo);
		
		return "redirect:/mySpace/mySpaceList";
	}

	/******************************* 호스트 메뉴 End *******************************/

	@RequestMapping(value = "/mySpace/mySpaceList")
	public String mySpaceList(MySpaceVo vo, Model model, HttpSession httpSession) throws Exception {

		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		List<MySpace> list = service.selectListMySpace(vo);
		model.addAttribute("list", list);

		vo.setHyspSeq(vo.getHyspSeq());
		vo.setHyspName(vo.getHyspName());
		vo.setHysmHost(vo.getHysmHost());

		return "user/mySpace/mySpaceList";
	}

	@RequestMapping(value = "/mySpace/mySpaceForm")
	public String mySpaceForm() throws Exception {

		return "user/mySpace/mySpaceForm";
	}

	@RequestMapping(value = "/mySpace/mySpaceInst")
	public String mySpaceInst(MySpaceVo vo, MySpace dto, Model model, RedirectAttributes redirectAttributes,
			HttpSession httpSession) throws Exception {

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
	public String mySpaceInstMember(MySpaceVo vo, MySpace dto, Model model, RedirectAttributes redirectAttributes,
			HttpSession httpSession) throws Exception {

		service.insertMySpaceHost(dto);
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));

		vo.setHyspSeq(dto.getHyspSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/mySpace/mySpaceList";
	}

	@RequestMapping(value = "/mySpace/mySpaceReceiveList")
	public String mySpaceReceiveList(@ModelAttribute("vo") MySpaceVo vo, Model model, HttpSession httpSession)
			throws Exception {

		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));

		List<MySpace> list = service.selectListReceive(vo);
		model.addAttribute("list", list);

		System.out.println("vo.getHymmSeq :" + vo.getHymmSeq());
		System.out.println("vo.getHymmName :" + vo.getHymmName());

		return "user/mySpace/mySpaceReceiveList";
	}

	@RequestMapping(value = "/mySpace/mySpaceReceive")
	public String mySpaceReceive(@ModelAttribute("vo") MySpaceVo vo, Model model, HttpSession httpSession)
			throws Exception {

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

	@RequestMapping(value = "/mySpace/mySpaceUpdt1")
	public String mySpaceUpdt1(@ModelAttribute("vo") MySpace dto, MySpaceVo vo, Model model,
			RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("vo.getHysmAcceptedNy :" + vo.getHysmAcceptedNy());

		if (vo.getHysmAcceptedNy() == 1) {
			service.updateReceiveYes(dto);
		} else {
			service.updateReceiveNo(dto);
		}
		service.updateReceiveYes(dto);
		vo.setHysmSeq(dto.getHysmSeq());
		vo.setHyspSeq(dto.getHyspSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/mySpace/mySpaceReceiveList";
	}

	@RequestMapping(value = "/mySpace/mySpaceUpdt2")
	public String mySpaceUpdt2(@ModelAttribute("vo") MySpace dto, MySpaceVo vo, Model model,
			RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("vo.getHysmAcceptedNy :" + vo.getHysmAcceptedNy());

		service.updateReceiveNo(dto);

		vo.setHysmSeq(dto.getHysmSeq());
		vo.setHyspSeq(dto.getHyspSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/mySpace/mySpaceReceiveList";
	}

	@RequestMapping(value = "/mySpace/mySpaceSend")
	public String mySpaceSend(@ModelAttribute("vo") MySpaceVo vo, HttpSession httpSession) throws Exception {

		System.out.println("vo.getHyspSeq :" + vo.getHyspSeq());
		System.out.println("vo.getHysmHost :" + vo.getHysmHost());

		return "user/mySpace/mySpaceSend";
	}

	@RequestMapping(value = "/mySpace/mySpacePlusMember")
	public String mySpaceSend(@ModelAttribute("vo") MySpaceVo vo, Model model, MySpace dto,
			RedirectAttributes redirectAttributes) throws Exception {

		MySpace rt = service.selectOneMember(vo);
		model.addAttribute("item", rt);

		dto.setHymmSeq(rt.getHymmSeq());

		service.insertMySpaceGuest(dto);

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/mySpace/mySpaceSendList";
	}

	@ResponseBody
	@RequestMapping(value = "mySpace/mySpaceCheckMember")
	public Map<String, Object> getId(MySpaceVo vo, MySpace dto, HttpSession httpSession, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

//		Member rtMember = service.selectOneId(dto);
//		model.addAttribute("rtMember", rtMember);

		List<MySpace> idList = service.selectListMember(vo);
		model.addAttribute("idList", idList);

		returnMap.put("idList", idList);
		returnMap.put("rt", "success");

		return returnMap;
	}

	@RequestMapping(value = "/mySpace/mySpaceSendList")
	public String mySpaceSendList(@ModelAttribute("vo") MySpaceVo vo, Model model, HttpSession httpSession)
			throws Exception {

		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));

		List<MySpace> list = service.selectListSend(vo);
		model.addAttribute("list", list);

		return "user/mySpace/mySpaceSendList";
	}

	@RequestMapping(value = "/mySpace/mySpaceFelete")
	public String mySpaceFelete(MySpaceVo vo, MySpace dto, RedirectAttributes redirectAttributes) throws Exception {

		service.ueleteMySpace(vo);

		vo.setHyspSeq(dto.getHyspSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/mySpace/mySpaceList";
	}
}