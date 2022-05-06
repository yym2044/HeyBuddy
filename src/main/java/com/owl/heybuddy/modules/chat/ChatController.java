package com.owl.heybuddy.modules.chat;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {

	@RequestMapping(value = "/chat/chat")
	public String chat(Locale locale, Model model) {

		return "user/chat/chat";
	}

}
