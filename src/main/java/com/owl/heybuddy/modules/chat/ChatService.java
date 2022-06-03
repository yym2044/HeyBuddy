package com.owl.heybuddy.modules.chat;

import java.util.List;

public interface ChatService {

	public List<Chat> selectListChatRoom(ChatVo vo) throws Exception; // 채팅룸

	public List<Chat> selectListChatMember(ChatVo vo) throws Exception; // 채팅멤버

	public Chat selectOneChatRoom(ChatVo vo) throws Exception; // 채팅룸선택

	public int selectOneCheck(ChatVo vo) throws Exception; // 채팅룸체크

	public Chat selectOneCheck2(ChatVo vo) throws Exception; // 채팅룸체크2

	public int insertChatRoom(Chat dto) throws Exception; // 채팅방 등록

	public int insertChatMember(Chat dto) throws Exception; // 채팅멤버등록

	public int insertChatMember2(Chat dto) throws Exception; // 채팅멤버등록

	public int ueleteChat(ChatVo vo) throws Exception; // 채팅가짜삭제

}