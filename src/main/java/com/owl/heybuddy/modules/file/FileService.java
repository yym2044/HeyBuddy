package com.owl.heybuddy.modules.file;

import java.util.List;

import com.owl.heybuddy.modules.member.Member;
import com.owl.heybuddy.modules.member.MemberVo;







public interface FileService { 


	
	int selectOneCount(FileVo vo) throws Exception;    //문서검색
	public List<File> documentList(FileVo vo) throws Exception; //문서리스트
	public List<File> documentListTemp(FileVo vo) throws Exception; //임시저장 문서리스트
	public  int selectOneCountSpaceMember(FileVo vo) throws Exception;    //스페이스멤버
	public List<File> selectListSpaceMember(FileVo vo) throws Exception; // 스페이스리스트


	
	public File documentView(FileVo vo) throws Exception;  //문서뷰
	public List<File> fileUploaded(FileVo vo) throws Exception; // 파일뷰
	public Member profileUploaded(MemberVo vo) throws Exception; //회원사진
	
	public int insertDocument(File dto) throws Exception;  //문서등록
	int updateDocument(File dto) throws Exception; //문서수정
	int deleteDocument(FileVo vo) throws Exception;  //문서삭제
	int updateDeleteDocument(FileVo vo) throws Exception; //문서가짜삭제 


	
}
