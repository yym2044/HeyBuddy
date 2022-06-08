//package com.owl.heybuddy.handler;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import org.json.simple.JSONObject;
//import org.springframework.stereotype.Component;
//import org.springframework.web.socket.CloseStatus;
//import org.springframework.web.socket.TextMessage;
//import org.springframework.web.socket.WebSocketSession;
//import org.springframework.web.socket.handler.TextWebSocketHandler;
//
//import com.fasterxml.jackson.databind.JsonNode;
//import com.fasterxml.jackson.databind.ObjectMapper;
//
//@Component
//public class EchoHandlerCopy extends TextWebSocketHandler {
//	
//	// 연결된 모든 sessions 저장
//	List<WebSocketSession> sessions = new ArrayList<>();
//	// Map<(아이디), (웹소켓세션)>
//	Map<String, WebSocketSession> userSessions = new HashMap<>();
//	
//	// Room마다 연결되어 있는 userId list를 저장
//	Map<String, List<String>> roomUsers = new HashMap<>();
//	
//	@Override
//	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
//		System.out.println("afterConnectionEstablished:" + session);
//	    sessions.add(session);
//	    String senderId = getId(session);
//	    userSessions.put(senderId, session);
//	}
//
////	@Override  
////	public void handleTextMessage(WebSocketSession session, TextMessage message) throws InterruptedException, IOException {
////		for (WebSocketSession webSocketSession : sessions) {
////			if (webSocketSession.isOpen() && !session.getId().equals(webSocketSession.getId())) {
////				webSocketSession.sendMessage(message);
////			}
////		}
////	}
//	@Override
//    public void handleTextMessage(WebSocketSession session, TextMessage message) throws InterruptedException, IOException {
//		System.out.println("session : " + session + " // message : " + message);
//		
//		String msg = message.getPayload();
////		System.out.println(message);
////		System.out.println(msg);
//		ObjectMapper objectMapper = new ObjectMapper();
//		JsonNode node = objectMapper.readTree(msg);
//		
//		String type = node.get("type").asText();
//		String sender = getId(session);
//		String roomId = node.get("roomId").asText();
//		
//		Map<String, Object> map = userSessions.get(sender).getAttributes();
//		JSONObject json = new JSONObject(map);
//		System.out.println("------------");
//		System.out.println(json.get("sessSeq"));
//		System.out.println(json.get("sessName"));
//		System.out.println("------------");
//		
//		if(type.equals("ENTER")) {
//			
//			if(roomUsers.get(roomId) == null) {
//				List<String> list = new ArrayList<>();
//				roomUsers.put(roomId, list);
//			}
//			
//			if(!roomUsers.get(roomId).contains(sender)) {	// 새로고침만 해도 추가되는 것 방지위해 조건 추가
//				System.out.println("입장프로세스 실행");
//				roomUsers.get(roomId).add(sender);
//				System.out.println(sender + "님이 들어왔습니다.");
//				
//				json.put("type", "USER");
//				json.put("socket_id", session.getId());
//				
//				//현재 들어와있는 room의 유저리스트
//				List<String> roomUserList = roomUsers.get(roomId);
//				
//				for(int i = 0; i < roomUserList.size(); i++) {
//					
//					System.out.println(i + " : " + roomUserList.get(i) + " " + userSessions.get(roomUserList.get(i)));
//					
//					userSessions.get(roomUserList.get(i)).sendMessage(message); //type : ENTER
//					userSessions.get(roomUserList.get(i)).sendMessage(new TextMessage(json.toJSONString())); //type : USER (to make connection newly)
//					
////					if(!session.getId().equals(userSessions.get(roomUserList.get(i)).getId())) {	// 자신말고 다른 사람에게만 메세지를 전송
////					}
//				
//					
////				System.out.println(userSessions.get(roomUserList.get(i)));
//				}
//			}
//			
//			
//		} else if(type.equals("LEAVE")) {
//			
//			roomUsers.get(roomId).remove(sender);
//			System.out.println(sender + "님이 나갔습니다");
//			List<String> roomUserList = roomUsers.get(roomId);
//			for(int i = 0; i < roomUserList.size(); i++) {
//				System.out.println(i + " : " + roomUserList.get(i) + " " + userSessions.get(roomUserList.get(i)));
//				if(!session.getId().equals(userSessions.get(roomUserList.get(i)).getId())) {	// 자신말고 다른 사람에게만 메세지를 전송
////					userSessions.get(roomUserList.get(i)).sendMessage(new TextMessage(sender + "님이 나갔습니다"));
//					userSessions.get(roomUserList.get(i)).sendMessage(message);
//				}
//			}
//		} else if(type.equals("Chat")) {
//			
////			String text = node.get("msg").asText();
//			
//			List<String> roomUserList = roomUsers.get(roomId);
//			
//			for(int i = 0; i < roomUserList.size(); i++) {
//				if(!session.getId().equals(userSessions.get(roomUserList.get(i)).getId())) {	// 자신말고 다른 사람에게만 메세지를 전송
//					userSessions.get(roomUserList.get(i)).sendMessage(message);
//				}
//			}
//			
//		} else if(type.equals("OFFER")) {
//			List<String> roomUserList = roomUsers.get(roomId);
//			
//			for(int i = 0; i < roomUserList.size(); i++) {
//				if(!session.getId().equals(userSessions.get(roomUserList.get(i)).getId())) {	// 자신말고 다른 사람에게만 메세지를 전송
//					userSessions.get(roomUserList.get(i)).sendMessage(message);
//				}
//			}
//		} else if(type.equals("ANSWER")) {
//			List<String> roomUserList = roomUsers.get(roomId);
//			
//			for(int i = 0; i < roomUserList.size(); i++) {
//				if(!session.getId().equals(userSessions.get(roomUserList.get(i)).getId())) {	// 자신말고 다른 사람에게만 메세지를 전송
//					userSessions.get(roomUserList.get(i)).sendMessage(message);
//				}
//			}
//		} else if(type.equals("ICE")) {
//			List<String> roomUserList = roomUsers.get(roomId);
//			
//			for(int i = 0; i < roomUserList.size(); i++) {
//				if(!session.getId().equals(userSessions.get(roomUserList.get(i)).getId())) {	// 자신말고 다른 사람에게만 메세지를 전송
//					userSessions.get(roomUserList.get(i)).sendMessage(message);
//				}
//			}
//		}
//		
////		else if(type.equals("OFFER")) {
////			List<String> roomUserList = roomUsers.get(roomId);
////			
////			for(int i = 0; i < roomUserList.size(); i++) {
////				
////				userSessions.get(roomUserList.get(i)).sendMessage(new TextMessage("{\"users\" : \"" + roomUserList + "\"}"));
////				
////			}
////		}
//		
//		
////		session.sendMessage(new TextMessage(msg));
//		
////		String senderId = getId(session);
////		for (WebSocketSession webSocketSession : sessions) {
////			webSocketSession.sendMessage(new TextMessage(senderId + ": " + message.getPayload()));
////		}
//    }
//
//
//	private String getId(WebSocketSession session) {
//		Map<String, Object> httpSession = session.getAttributes();
//		
//////	확인결과, 원래 우리가 httpSession에 담아두었던 결과값이 그대로 나온다!
////		for(String key : httpSession.keySet()) {
////			String value = String.valueOf(httpSession.get(key));
////			System.out.println("[key] : " + key + ", [value] : " + value);
////		}
//		
//		return String.valueOf(httpSession.get("sessSeq"));
//	}
//
//	@Override
//	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
//		System.out.println("afterConnectionClosed:" + session + ":" + status);
//		sessions.remove(session);
//	}
//	
//}