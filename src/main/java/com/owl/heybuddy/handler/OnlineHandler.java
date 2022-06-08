package com.owl.heybuddy.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class OnlineHandler extends TextWebSocketHandler {
	
	// Map<(아이디), (웹소켓세션)> 스페이스에 구별 없이 모든 접속한 세션을 저장
	Map<String, WebSocketSession> userSessions = new HashMap<>();
	
	// Room마다 연결되어 있는 userId list를 저장
	Map<String, List<String>> spaceUsers = new HashMap<>();
	
	
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
	    
		String sessSeq = getSessSeq(session);
		userSessions.put(sessSeq, session);
		
	    String hyspSeq = getHyspSeq(session);
		
		if(spaceUsers.get(hyspSeq) == null) {
			List<String> list = new ArrayList<>();
			spaceUsers.put(hyspSeq, list);
		}
		
		if(!spaceUsers.get(hyspSeq).contains(sessSeq)) {
			spaceUsers.get(hyspSeq).add(sessSeq);
		}
		
		List<String> spaceUserList = spaceUsers.get(hyspSeq);
		
		JSONObject json = new JSONObject(spaceUsers);
		
		for(int i = 0; i < spaceUserList.size(); i++) {
			userSessions.get(spaceUserList.get(i)).sendMessage(new TextMessage(json.get(hyspSeq).toString()));
		}
			
		
		
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

		String sessSeq = getSessSeq(session);
		userSessions.remove(sessSeq);
	    
		if(!(getHyspSeq(session) == null)) {
			String hyspSeq = getHyspSeq(session);
			spaceUsers.get(hyspSeq).remove(sessSeq);
		}
		
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String msg = message.getPayload();
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode node = objectMapper.readTree(msg);
		
		String type = node.get("type").asText();
		
		if(type.equals("LeaveSpace")) {
			String sessSeq = getSessSeq(session);
			userSessions.remove(sessSeq);
		    
			String hyspSeq = getHyspSeq(session);
			spaceUsers.get(hyspSeq).remove(sessSeq);
			
			List<String> spaceUserList = spaceUsers.get(hyspSeq);
			
			JSONObject json = new JSONObject(spaceUsers);
			
			for(int i = 0; i < spaceUserList.size(); i++) {
				userSessions.get(spaceUserList.get(i)).sendMessage(new TextMessage(json.get(hyspSeq).toString()));
			}
				
			
		}
	}

	private String getSessSeq(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		return (String) httpSession.get("sessSeq");
	}
	private String getHyspSeq(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		return (String) httpSession.get("hyspSeq");
	}

	
}
