package com.owl.heybuddy.modules.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {

	@Autowired
	ChatServiceImpl service;

	@RequestMapping(value = "/chat/chat")
	public String chat(ChatVo vo, Model model) throws Exception {
		List<Chat> list = service.selectListChatMember(vo);
		model.addAttribute("list", list);
		return "user/chat/chat";
	}

	@RequestMapping(value = "/chat/chat2")
	public String chat2() throws Exception {

		return "user/chat/chat2";
	}

}
