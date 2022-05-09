package com.owl.heybuddy.modules.file;

import java.util.List;




public interface FileService { 

	
	int selectOneCount(FileVo vo) throws Exception;    //문서검색
	public List<File> documentList(FileVo vo) throws Exception; //문서리스트
	
	public File documentView(FileVo vo) throws Exception;  //문서뷰
	public File fileView(FileVo vo) throws Exception;  //파일뷰
	
	public int insertDocument(File dto) throws Exception;  //문서등록
	public int insertFile(File dto) throws Exception;  //파일등록
	File fileUploaded(FileVo vo) throws Exception; // 파일등록
	
	int updateDocument(File dto) throws Exception; //문서수정
	
	int deleteDocument(FileVo vo) throws Exception;  //문서삭제
	int updateDeleteDocument(FileVo vo) throws Exception; //문서가짜삭제 

	
}
