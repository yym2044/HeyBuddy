package com.owl.heybuddy.modules.chat;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDao {

	@Inject
	private SqlSession sqlSession;

	private static String namespace = "com.owl.heybuddy.modules.chat.ChatMpp";

	public List<Chat> selectListChatRoom(ChatVo vo) {
		return sqlSession.selectList(namespace + ".selectListChatRoom", vo); // 채팅룸
	}

	public int selectOneCheck(ChatVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCheck", vo); // 채팅방체크
	}

	public Chat selectOneCheck2(ChatVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCheck2", vo); // 채팅방체크2
	}

	public List<Chat> selectListChatMember(ChatVo vo) {
		return sqlSession.selectList(namespace + ".selectListChatMember", vo); // 채팅멤버
	}

	public List<Chat> selectListChatMember2(ChatVo vo) {
		return sqlSession.selectList(namespace + ".selectListChatMember2", vo); // 채팅멤버리스트
	}

	public List<Chat> selectListMember(ChatVo vo) {
		return sqlSession.selectList(namespace + ".selectListMember", vo); // 스페이스멤버
	}

	public Chat selectOneChatRoom(ChatVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneChatRoom", vo); // 채팅룸선택
	}

	public int insertChatRoom(Chat dto) {
		return sqlSession.insert(namespace + ".insertChatRoom", dto); // 채팅방등록
	}

	public int insertChatMember(Chat dto) {
		return sqlSession.insert(namespace + ".insertChatMember", dto); // 채팅멤버등록
	}

	public int insertChatMember2(Chat dto) {
		return sqlSession.insert(namespace + ".insertChatMember2", dto); // 채팅멤버등록
	}

	public int ueleteChat(ChatVo vo) {
		return sqlSession.update(namespace + ".ueleteChat", vo); // 채팅가짜삭제
	}
}