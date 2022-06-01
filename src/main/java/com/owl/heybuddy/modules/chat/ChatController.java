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
	public String chat(@ModelAttribute("vo") ChatVo vo, Chat dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		
		List<Chat> list = service.selectListChatRoom(vo);
		model.addAttribute("list", list);

		vo.setHycrSeq(vo.getHycrSeq());
		
		return "user/chat/chat";
	}

	@RequestMapping(value = "/chat/chatPlus")
	public String chatPlus(@ModelAttribute("vo") ChatVo vo, Chat dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));

		List<Chat> list = service.selectListChatRoom(vo);
		model.addAttribute("list", list);

		return "user/chat/chatPlus";
	}

	@RequestMapping(value = "/chat/chatInst")
	public String mySpaceInst(ChatVo vo, Chat dto, Model model, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		dto.setHymmSeq(vo.getHymmSeq());
		dto.setHymmName(vo.getHymmName());
		service.insertChatRoom(dto);

		dto.setHymmSeq(vo.getHymmSeq());
		dto.setHycrSeq(dto.getHycrSeq());
		service.insertChatMember(dto);

		dto.setHycrSeq(dto.getHycrSeq());
		dto.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		service.insertChatMember2(dto);
		
		vo.setHycrSeq(dto.getHycrSeq());
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

		httpSession.setAttribute("chatRoom", vo.getHycrSeq());

		System.out.println("vo.getHycrSeq :" + vo.getHycrSeq());

		returnMap.put("chatList", chatList);
		returnMap.put("rt", "success");

		return returnMap;
	}

	/*
	 * @RequestMapping(value = "/chat/chatRoom", method = RequestMethod.GET) public
	 * String chatRoom(@ModelAttribute("vo") ChatVo vo, Chat dto, Model model,
	 * HttpSession httpSession, RedirectAttributes redirectAttributes) throws
	 * Exception { vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
	 * vo.setHycrSeq((String) httpSession.getAttribute("chatRoom"));
	 * 
	 * String roomNum = service.selectOneChatRoom(vo); vo.setRoomNum(roomNum);
	 * 
	 * vo.setHycrSeq(vo.getHycrSeq()); redirectAttributes.addFlashAttribute("vo",
	 * vo);
	 * 
	 * return "redirect:/chat/chat"; }
	 */

	@RequestMapping(value = "/chat/chatRoom")
	public String chatRoom(@ModelAttribute("vo") ChatVo vo, Chat dto, Model model, HttpSession httpSession) throws Exception {
		
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
