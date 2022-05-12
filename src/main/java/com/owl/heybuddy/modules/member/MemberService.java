package com.owl.heybuddy.modules.member;
 
import java.util.List;

public interface MemberService {

	
	int selectOneCount(MemberVo vo) throws Exception;    //회원검색
	public List<Member> memberList(MemberVo vo) throws Exception; //회원리스트
	public Member memberView(MemberVo vo) throws Exception;  //회원뷰
	public int insertMember(Member dto) throws Exception;  //회원등록
	int updateMember(Member dto) throws Exception; //회원수정
	public Member profileUploaded(MemberVo vo) throws Exception; //회원사진
	Member selectOneLogin(Member dto) throws Exception;  //회원로그인
	int deleteMember(MemberVo vo) throws Exception;  //회원삭제
	int updateDeleteMember(MemberVo vo) throws Exception; //회원가짜삭제 
	
//	영민 추가
	public int selectOneCountMemberInSpace(MemberVo vo) throws Exception;
	public List<Member> selectListMemberInSpace(MemberVo vo) throws Exception;
	public Member selectOneMemberInSpace(MemberVo vo) throws Exception;
	
}
