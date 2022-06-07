package com.owl.heybuddy.modules.chat;

import java.util.List;

public interface ChatService {

	public List<Chat> selectListChatRoom(ChatVo vo) throws Exception; // 채팅룸

	public List<Chat> selectListChatMember(ChatVo vo) throws Exception; // 채팅멤버

	public List<Chat> selectListChatMember2(ChatVo vo) throws Exception; // 채팅멤버리스트

	public int selectOneChatMember(ChatVo vo) throws Exception; // 채팅멤버수

	public List<Chat> selectListMember(ChatVo vo) throws Exception; // 스페이스멤버

	public List<Chat> selectListGroupCheck(ChatVo vo) throws Exception; // 채팅룸 리스트

	public int selectOneGroupCheckNum(ChatVo vo) throws Exception; // 채팅룸 리스트

	public Chat selectOneChat(ChatVo vo) throws Exception; // 채팅룸 리스트

	public Chat selectOneChatRoom(ChatVo vo) throws Exception; // 채팅룸선택

	public Chat selectOneCheck(ChatVo vo) throws Exception; // 채팅룸체크

	public Chat selectOneCheck2(ChatVo vo) throws Exception; // 채팅룸체크2

	public String selectOneCheck3(ChatVo vo) throws Exception; // 채팅룸체크3

	public int insertChatRoom(Chat dto) throws Exception; // 채팅방 등록

	public int insertChatMember(Chat dto) throws Exception; // 채팅멤버등록

	public int insertChatMember2(Chat dto) throws Exception; // 채팅멤버등록

	public int ueleteChat(ChatVo vo) throws Exception; // 채팅가짜삭제

}