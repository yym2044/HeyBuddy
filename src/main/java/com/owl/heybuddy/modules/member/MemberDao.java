package com.owl.heybuddy.modules.member;
 
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	private SqlSession sqlSession;
	  
	private static String namespace = "com.owl.heybuddy.modules.member.MemberMpp";
	
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);  // 회원검색
	}

	public List<Member> memberList(MemberVo vo) {
		return sqlSession.selectList(namespace + ".memberList", vo); // 회원리스트
	}

	public Member memberView(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".memberView", vo); // 회원뷰
	}

	public int insertMember(Member dto) {
		return sqlSession.insert(namespace + ".insertMember", dto); // 회원등록
	}

	public int updateMember(Member dto) {
		return sqlSession.update(namespace + ".updateMember", dto); // 회원수정
	}

	public Member selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto); // 사원로그인셀렉
	}

	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto); // 사원로그인
	}

	public int deleteMember(MemberVo vo) {
		return sqlSession.delete(namespace + ".deleteMember", vo); // 진짜삭제
	} 

	public int updateDeleteMember(MemberVo vo) {
		return sqlSession.update(namespace + ".updateDeleteMember", vo); // 가짜삭제
	} 

	public Member profileUploaded(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".profileUploaded", vo); // 회원사진
	}
	
	public int insertUploaded(Member dto) {
		return sqlSession.insert(namespace + ".insertUploaded", dto); // 회원등록(프로필사진)
	}
}
