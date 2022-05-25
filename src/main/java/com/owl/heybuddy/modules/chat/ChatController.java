package com.owl.heybuddy.modules.chat;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {

	@Autowired
	ChatServiceImpl service;

	@RequestMapping(value = "/chat/chat")
	public String chat(@ModelAttribute("vo") ChatVo vo, Model model, HttpSession httpSession) throws Exception {
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		System.out.println("vo.getHyspSeq :" + vo.getHyspSeq());

		List<Chat> list = service.selectListChatMember(vo);
		model.addAttribute("list", list);

		return "user/chat/chat";
	}

	@RequestMapping(value = "/chat/chat2")
	public String chat2() throws Exception {

		return "user/chat/chat2";
	}

}
