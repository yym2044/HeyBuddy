//package com.owl.heybuddy.modules.meet;
//
//
//import org.springframework.messaging.handler.annotation.MessageMapping;
//import org.springframework.messaging.handler.annotation.SendTo;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.util.HtmlUtils;
//
//import com.owl.heybuddy.modules.meet.dto.Message;
//import com.owl.heybuddy.modules.meet.dto.ResponseMessage;
//
//@Controller
//public class MessageController {
//
//	@MessageMapping("/message")
//	@SendTo("/topic/messages")
//	public ResponseMessage getMessage(final Message message) throws InterruptedException {
//		
//		Thread.sleep(1000);
//		return new ResponseMessage(HtmlUtils.htmlEscape(message.getMessageContent()));
//	}
//	
//}
