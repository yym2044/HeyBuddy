package com.owl.heybuddy.modules.chat;

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
public class ChatController {

	@Autowired
	ChatServiceImpl service;

	@RequestMapping(value = "/chat/chat")
	public String chat(@ModelAttribute("vo") ChatVo vo, Chat dto, Model model, HttpSession httpSession)
			throws Exception {

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));

		List<Chat> list = service.selectListChatRoom(vo);
		model.addAttribute("list", list);

		List<Chat> selectListMember = service.selectListMember(vo);
		model.addAttribute("selectListMember", selectListMember);

		List<Chat> chatList = service.selectListChatMember2(vo);
		model.addAttribute("chatList", chatList);

		return "user/chat/chat";
	}

	@RequestMapping(value = "/chat/chatPlusMember")
	public String chatPlusMember(@ModelAttribute("vo") ChatVo vo, Chat dto, Model model, HttpSession httpSession,
			RedirectAttributes redirectAttributes) throws Exception {

		dto.setHycmChatMaker(dto.getHycmChatMaker());
		dto.setHymmSeq(dto.getHymmSeq());
		dto.setHycrSeq(vo.getHycrSeq());
		service.updateChat(vo);
		service.insertChatMember(dto);

		vo.setHycrSeq(vo.getHycrSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/chat/chat";
	}

	@RequestMapping(value = "/chat/chatInst")
	public String chatInst(ChatVo vo, Chat dto, Model model, RedirectAttributes redirectAttributes,
			HttpSession httpSession) throws Exception {

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));

		int rtChat = service.selectOneGroupCheckNum(vo);

		if (rtChat == 0) {

			vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
			dto.setHymmSeq(vo.getHymmSeq());
			dto.setHymmName(vo.getHymmName());
			service.insertChatRoom(dto);                                                                                                                                                                        

			dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
			dto.setHymmSeq(vo.getHymmSeq());
			service.insertChatMember(dto);

			
			dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
			dto.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
			service.insertChatMember2(dto);

			vo.setHycrSeq(dto.getHycrSeq());

		} else {

			vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
			vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
	

			int rtChat2 = service.selectOneGroupCheckNum(vo);

			if (rtChat2 == 1) {

				vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
				vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));


				Chat rtChat5 = service.selectOneCheck2(vo);
				vo.setHycrSeq(rtChat5.getHycrSeq());

				int rtChat3 = service.selectOneChatMember(vo);

				if (rtChat3 > 2) {

					vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
					dto.setHymmSeq(vo.getHymmSeq());
					dto.setHymmName(vo.getHymmName());
					service.insertChatRoom(dto);

					dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
					dto.setHymmSeq(vo.getHymmSeq());

					service.insertChatMember(dto);


					dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
					dto.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
					service.insertChatMember2(dto);

					vo.setHycrSeq(dto.getHycrSeq());

				} else if (rtChat3 == 2) {

					vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
					vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));


					Chat rtChat4 = service.selectOneCheck2(vo);
					vo.setHycrSeq(rtChat4.getHycrSeq());

					service.selectOneCheck(vo);


				} else {

				}

			} else if (rtChat2 > 1) {

				vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
				vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));


				Chat rtFinal = service.selectOneChat(vo);

				if (rtFinal == null) {

					vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
					dto.setHymmSeq(vo.getHymmSeq());
					dto.setHymmName(vo.getHymmName());
					service.insertChatRoom(dto);

					dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
					dto.setHymmSeq(vo.getHymmSeq());

					service.insertChatMember(dto);


					dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
					dto.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
					service.insertChatMember2(dto);

					vo.setHycrSeq(dto.getHycrSeq());

				} else {

					vo.setHycrSeq(rtFinal.getHycrSeq());

				}

			} else {

			}

		}

		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/chat/chat";

	}

	@ResponseBody

	@RequestMapping(value = "chat/chatPlusProc")
	public Map<String, Object> chatPlusProc(ChatVo vo, Chat dto, HttpSession httpSession, Model model) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));
		vo.setHycrSeq(vo.getHycrSeq());
		System.out.println("vo.getHycrSeq() :" + vo.getHycrSeq());

		List<Chat> list = service.selectListPlusMember(vo);
		model.addAttribute("list", list);

		if (list == null) {
			
			returnMap.put("rt", "fail");
		
		} else {
			
			dto.setHymmSeq(dto.getHymmSeq());
			Chat rtMember = service.selectOnePlusMember(dto);
			
			if (rtMember.getHymmSeq() == dto.getHymmSeq()) {
				
				returnMap.put("rt", "fail");
			
			} else {
			
				returnMap.put("rt", "success");
			}
			
		}

		return returnMap;
	}

	@RequestMapping(value = "/chat/chatRoom")
	public String chatRoom(@ModelAttribute("vo") ChatVo vo, Chat dto, Model model, HttpSession httpSession)
			throws Exception {

		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));

		List<Chat> list = service.selectListChatRoom(vo);
		model.addAttribute("list", list);

		vo.setHycrSeq(vo.getHycrSeq());

		return "user/chat/chatRoom";
	}

	@RequestMapping(value = "/chat/chatUelete")
	public String chatUelete(ChatVo vo, Chat dto, RedirectAttributes redirectAttributes) throws Exception {

		System.out.println("vo.getHycrSeq :" + vo.getHycrSeq());
		service.ueleteChat(vo);

		vo.setHyspSeq(dto.getHyspSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/chat/chat";
	}
}
