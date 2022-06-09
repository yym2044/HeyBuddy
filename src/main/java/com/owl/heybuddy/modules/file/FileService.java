package com.owl.heybuddy.modules.file;

import java.util.List;

public interface FileService { 


	 
	int selectOneCount(FileVo vo) throws Exception;    //문서검색
	public List<File> documentList(FileVo vo) throws Exception; //문서리스트
	public List<File> documentListTemp(FileVo vo) throws Exception; //임시저장 문서리스트
	public int selectOneCountSpaceMember(FileVo vo) throws Exception;    //스페이스멤버
	public List<File> selectListSpaceMember(FileVo vo) throws Exception; // 스페이스리스트
	public File documentView(FileVo vo) throws Exception;  //문서뷰
	public File documentViewTemp(FileVo vo) throws Exception;  // 임시문서뷰
	public List<File> fileUploaded(FileVo vo) throws Exception; // 파일뷰
	public List<File> profileUploaded(FileVo vo) throws Exception; //회원사진
	public int insertDocument(File dto) throws Exception;  //문서등록
	int insertDocumentTemp(File dto) throws Exception; // 문서임시등록
	int updateDocument(File dto) throws Exception; //문서수정 및 임시저장에서 진짜등록할때
	int deleteDocument(FileVo vo) throws Exception;  //문서삭제
	int updateDeleteDocument(FileVo vo) throws Exception; //문서가짜삭제 
    List<File> commentList1(FileVo vo) throws Exception; //모댓글리스트
    List<File> commentList2(FileVo vo) throws Exception; //대댓글리스트
	List<File> commentList1(File dto) throws Exception; //모댓글리스트
	List<File> commentList2(File dto) throws Exception; //대댓글리스트
    int commentCreate1(File dto) throws Exception; //모댓글등록
    int commentCreate2(File dto) throws Exception; //대댓글등록
    int commentUpdate(File dto) throws Exception; //댓글수정
    int commentDelete(FileVo vo) throws Exception; //댓글삭제
    List<File> commentList(FileVo vo) throws Exception; //모댓글리스트

 











	
}
