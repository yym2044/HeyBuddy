package com.owl.heybuddy.modules.file;

import java.util.List;






public interface FileService { 

	
	int selectOneCount(FileVo vo) throws Exception;    //문서검색
	public List<File> documentList(FileVo vo) throws Exception; //문서리스트

	public List<File> selectListSpace() throws Exception; 
	public List<File> selectListMember() throws Exception; 
	
	public File documentView(FileVo vo) throws Exception;  //문서뷰
	public int insertDocument(File dto) throws Exception;  //문서등록
	File fileUploaded(FileVo vo) throws Exception; // 파일뷰
	int updateDocument(File dto) throws Exception; //문서수정
	int deleteDocument(FileVo vo) throws Exception;  //문서삭제
	int updateDeleteDocument(FileVo vo) throws Exception; //문서가짜삭제 

	
}
