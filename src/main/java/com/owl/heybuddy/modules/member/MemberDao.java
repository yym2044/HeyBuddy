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
		return sqlSession.selectOne(namespace + ".selectOneCount", vo); // 회원검색
	}

    public int selectOneCountSpaceMember(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCountSpaceMember", vo); // 회원검색
	}

	public Member selectOneSidebar(MemberVo vo) { 
		return sqlSession.selectOne(namespace + ".selectOneSidebar", vo); // 사이드바뷰
	}

	public List<Member> selectListSpaceMember(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectListSpaceMember", vo); // 스페이스리스트
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


	public Member profileUploaded(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".profileUploaded", vo); // 회원사진 확인
	}

	public int insertUploaded(Member dto) {
		return sqlSession.insert(namespace + ".insertUploaded", dto); // 회원사진 등록
	}
	
	public int updateUploaded(Member dto) {
		return sqlSession.update(namespace + ".updateUploaded", dto); // 회원사진 수정
	}
	
	public Member selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto); // 로그인셀렉
	}

	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto); // 로그인
	}

	public int deleteMember(MemberVo vo) {
		return sqlSession.delete(namespace + ".deleteMember", vo); // 진짜삭제
	}

	public int updateDeleteMember(MemberVo vo) {
		return sqlSession.update(namespace + ".updateDeleteMember", vo); // 가짜삭제
	}


	// 영민 추가
	public int selectOneCountMemberInSpace(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCountMemberInSpace", vo);
	}

	public List<Member> selectListMemberInSpace(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectListMemberInSpace", vo);
	}

	public Member selectOneMemberInSpace(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneMemberInSpace", vo);
	}

	public int insertMemberInSpace(Member dto) {
		return sqlSession.insert(namespace + ".insertMemberInSpace", dto);
	}

	public int insertSpaceMember(Member dto) {
		return sqlSession.insert(namespace + ".insertSpaceMember", dto);
	}

	public Member selectOneSpace(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneSpace", vo);
	}
	
	public int updateMemberProfile(Member dto) {
		return sqlSession.update(namespace + ".updateMemberProfile", dto);
	}
	
	public int updateUploaded_2(Member dto) {
		return sqlSession.update(namespace + ".updateUploaded_2", dto); 
	}
}
