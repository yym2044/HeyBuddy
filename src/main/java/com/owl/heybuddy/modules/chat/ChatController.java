package com.owl.heybuddy.modules.chat;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
		vo.setHymmName(vo.getHymmName());
		vo.setHycrSeq(vo.getHycrSeq());

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
		vo.setHymmSeq(vo.getHymmSeq());
		vo.setHymmName(vo.getHymmName());

		int rtChat = service.selectOneGroupCheckNum(vo);

		if (rtChat == 0) {

			vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
			dto.setHymmSeq(vo.getHymmSeq());
			dto.setHymmName(vo.getHymmName());
			service.insertChatRoom(dto);

			dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
			dto.setHymmSeq(vo.getHymmSeq());
			dto.setHycrSeq(dto.getHycrSeq());
			service.insertChatMember(dto);

			dto.setHycrSeq(dto.getHycrSeq());
			dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
			dto.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
			service.insertChatMember2(dto);

			vo.setHycrSeq(dto.getHycrSeq());

		} else {

			vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
			vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
			vo.setHymmSeq(vo.getHymmSeq());
			vo.setHymmName(vo.getHymmName());
			
			int rtChat2 = service.selectOneGroupCheckNum(vo);

			if (rtChat2 == 1) {

				vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
				vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
				vo.setHymmSeq(vo.getHymmSeq());
				vo.setHymmName(vo.getHymmName());
				
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
					dto.setHycrSeq(dto.getHycrSeq());
					service.insertChatMember(dto);

					dto.setHycrSeq(dto.getHycrSeq());
					dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
					dto.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
					service.insertChatMember2(dto);

					vo.setHycrSeq(dto.getHycrSeq());

				} else if (rtChat3 == 2) {

					vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
					vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
					vo.setHymmSeq(vo.getHymmSeq());

					Chat rtChat4 = service.selectOneCheck2(vo);
					vo.setHycrSeq(rtChat4.getHycrSeq());

					service.selectOneCheck(vo);
					vo.setHycrSeq(vo.getHycrSeq());

				} else {
					
				}

			} else if (rtChat2 == 2) {

				vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
				vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
				vo.setHymmSeq(vo.getHymmSeq());
				vo.setHycrSeq(vo.getHycrSeq());

				Chat rtFinal = service.selectOneChat(vo);
				vo.setHycrSeq(rtFinal.getHycrSeq());

			} else {

			}

		}

		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/chat/chat";

	}
	/*
	 * vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
	 * vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
	 * vo.setHymmSeq(vo.getHymmSeq()); vo.setHymmName(vo.getHymmName());
	 * 
	 * int rtChat = service.selectOneCheck(vo); // 1 -> 그대로 출력 rtChat(채팅방존재여부확인)
	 * rtChat2(시퀀스에따라채팅방조회) // rtChat3(최대시퀀스채팅룸가져오기) rtChat4(채팅방 멤버 수) // 2 -> 새로
	 * 만들기
	 * 
	 * if (rtChat != 0) { // 채팅방 존재
	 * 
	 * 
	 * 
	 * if (rtChat == 1) {
	 * 
	 * vo.setHycrSeq(vo.getHycrSeq()); int rtChat4 =
	 * service.selectOneChatMember(vo); vo.setHymmSeq(vo.getHymmSeq());
	 * vo.setHymmName(vo.getHymmName());
	 * 
	 * if (rtChat4 > 2) {
	 * 
	 * vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
	 * dto.setHymmSeq(vo.getHymmSeq()); dto.setHymmName(vo.getHymmName());
	 * service.insertChatRoom(dto);
	 * 
	 * dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
	 * dto.setHymmSeq(vo.getHymmSeq()); dto.setHycrSeq(dto.getHycrSeq());
	 * service.insertChatMember(dto);
	 * 
	 * dto.setHycrSeq(dto.getHycrSeq()); dto.setHycmChatMaker((String)
	 * httpSession.getAttribute("sessSeq")); dto.setHymmSeq((String)
	 * httpSession.getAttribute("sessSeq")); service.insertChatMember2(dto);
	 * 
	 * vo.setHycrSeq(dto.getHycrSeq());
	 * 
	 * } else if (rtChat4 == 2) {
	 * 
	 * vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
	 * vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
	 * vo.setHymmSeq(vo.getHymmSeq()); vo.setHycrSeq(vo.getHycrSeq());
	 * 
	 * Chat rtChat2 = service.selectOneCheck2(vo);
	 * vo.setHycrSeq(rtChat2.getHycrSeq());
	 * 
	 * } else {
	 * 
	 * }
	 * 
	 * } else if (rtChat == 2) {
	 * 
	 * vo.setHycrSeq(vo.getHycrSeq()); int rtChat4 =
	 * service.selectOneChatMember(vo); vo.setHymmSeq(vo.getHymmSeq());
	 * vo.setHymmName(vo.getHymmName()); vo.setHycrSeq(vo.getHycrSeq());
	 * 
	 * if (rtChat4 == 2) {
	 * 
	 * vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
	 * vo.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
	 * vo.setHymmSeq(vo.getHymmSeq()); String rtChat3 = service.selectOneCheck3(vo);
	 * vo.setHycrSeq(rtChat3);
	 * 
	 * } else {
	 * 
	 * }
	 * 
	 * }
	 * 
	 * } else { // 조회된 채팅방 x - > 새로 생성
	 * 
	 * vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
	 * dto.setHymmSeq(vo.getHymmSeq()); dto.setHymmName(vo.getHymmName());
	 * service.insertChatRoom(dto);
	 * 
	 * dto.setHycmChatMaker((String) httpSession.getAttribute("sessSeq"));
	 * dto.setHymmSeq(vo.getHymmSeq()); dto.setHycrSeq(dto.getHycrSeq());
	 * service.insertChatMember(dto);
	 * 
	 * dto.setHycrSeq(dto.getHycrSeq()); dto.setHycmChatMaker((String)
	 * httpSession.getAttribute("sessSeq")); dto.setHymmSeq((String)
	 * httpSession.getAttribute("sessSeq")); service.insertChatMember2(dto);
	 * 
	 * vo.setHycrSeq(dto.getHycrSeq());
	 * 
	 * }
	 */

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "chat/chatRoomProc") public Map<String, Object>
	 * getId(ChatVo vo, Chat dto, HttpSession httpSession, Model model) throws
	 * Exception {
	 * 
	 * Map<String, Object> returnMap = new HashMap<String, Object>();
	 * 
	 * vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
	 * vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
	 * vo.setHymmName((String) httpSession.getAttribute("sessName"));
	 * 
	 * List<Chat> chatList = service.selectListChatMember(vo);
	 * model.addAttribute("chatList", chatList);
	 * 
	 * httpSession.setAttribute("chatRoom", vo.getHycrSeq());
	 * 
	 * System.out.println("vo.getHycrSeq :" + vo.getHycrSeq());
	 * 
	 * returnMap.put("chatList", chatList); returnMap.put("rt", "success");
	 * 
	 * return returnMap; }
	 */

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
