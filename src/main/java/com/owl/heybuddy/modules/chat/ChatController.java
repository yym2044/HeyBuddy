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

		return "user/chat/chat";
	}

	@RequestMapping(value = "/chat/chatInst")
	public String mySpaceInst(ChatVo vo, Chat dto, Model model, RedirectAttributes redirectAttributes,
			HttpSession httpSession) throws Exception {

		service.insertChatRoom(dto);
		dto.setHycrSeq(dto.getHycrSeq());
		service.insertChatMember(dto);
		/*
		 * vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		 * vo.setHymmName((String) httpSession.getAttribute("sessName"));
		 */
		vo.setHyspSeq(dto.getHyspSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/chat/chat";
	}

	@ResponseBody
	@RequestMapping(value = "chat/chatRoomProc")
	public Map<String, Object> getId(ChatVo vo, Chat dto, HttpSession httpSession, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));
		
		List<Chat> chatList = service.selectListChatMember(vo);
		model.addAttribute("chatList", chatList);
		
		returnMap.put("chatList", chatList);
		returnMap.put("rt", "success");
		
		return returnMap;
	}

	@RequestMapping(value = "/chat/chat2")
	public String chat2() throws Exception {

		return "user/chat/chat2";
	}

}
