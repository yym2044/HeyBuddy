package com.owl.heybuddy.modules.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


import com.owl.heybuddy.common.util.UtilUpload;
import com.owl.heybuddy.modules.member.Member;






@Service
public class FileServiceImpl implements FileService { 
	
	@Autowired
	FileDao dao;
	

	@Override
	public List<File> documentList(FileVo vo) throws Exception { //문서리스트
		return dao.documentList(vo);
		
	}
	@Override
	public List<File> documentListTemp(FileVo vo) throws Exception { //임시문서리스트
		return dao.documentListTemp(vo);
	} 
	@Override
	public int selectOneCount(FileVo vo) throws Exception {   //문서검색
		return dao.selectOneCount(vo);
	}
	@Override
	public File documentView(FileVo vo) throws Exception { //문서뷰
		return dao.documentView(vo);
	}
	public File documentViewTemp(FileVo vo) {  //임시문서 뷰
		return dao.documentViewTemp(vo);
	}
	public File selectOneMenu(FileVo vo)  throws Exception {  // 메뉴달라짐
		return dao.selectOneMenu(vo);
	}
	@Override
	public List<File> profileUploaded(FileVo vo) throws Exception { //회원사진
		return dao.profileUploaded(vo);
	}
	@Override
	public List<File> fileUploaded(FileVo vo) throws Exception { //파일뷰
		return dao.fileUploaded(vo);
	}

	public Member selectOneSpace(FileVo vo) throws Exception {
		return dao.selectOneSpace(vo);
	}
	
	@Override
	public List<File> selectListSpaceMember(FileVo vo) throws Exception { // 스페이스리스트
		return dao.selectListSpaceMember(vo);
	}

	public List<File> selectListMemberInSpace(FileVo vo) throws Exception {
		return dao.selectListMemberInSpace(vo);
	}

	@Override
	public int insertDocument(File dto) throws Exception {  //문서 + 파일 등록
		dao.insertDocument(dto);

		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0()) {
		
			if(!multipartFile.isEmpty()) {
			
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			
			UtilUpload.uploadFile(multipartFile, pathModule, dto);

			dto.setTableName("hybdFileUploaded");
//			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setPseq(dto.getHydcSeq());
			
			dao.insertUploaded(dto);

			j++;
		}
		
		}
		return 1;
	}
		
	@Override
	public int updateDocument(File dto) throws Exception { //문서수정
		dao.updateDocument(dto);
		

			
		String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
		UtilUpload.uploadFile(dto.getFile0()[0], pathModule, dto);

		dto.setTableName("hybdMemberUploaded");
		dto.setPseq(dto.getHymmSeq());
		dao.updateUploaded(dto);
		return 1;
	}
	
	@Override
	public int deleteDocument(FileVo vo) throws Exception  {   //문서삭제
		return dao.deleteDocument(vo);	
	}
	@Override
	public int updateDeleteDocument(FileVo vo) throws Exception { // 문서가짜삭제 
		return dao.updateDeleteDocument(vo);
	}

	@Override
	public int selectOneCountSpaceMember(FileVo vo) throws Exception { // 스페이스멤버
		return dao.selectOneCountSpaceMember(vo);
	}

	@Override
	public int insertDocumentTemp(File dto) throws Exception {  // 임시 문서 + 파일 등록
		dao.insertDocumentTemp(dto);

		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			
			UtilUpload.uploadFile(multipartFile, pathModule, dto);

			dto.setTableName("hybdFileUploaded");
//			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setPseq(dto.getHydcSeq());
			
			dao.insertUploaded(dto);

			j++;
		}
		
		return 1;
	}



}