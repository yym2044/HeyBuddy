package com.owl.heybuddy.modules.file;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class FileDao { 

	@Inject
	private SqlSession sqlSession;
	  
	private static String namespace = "com.owl.heybuddy.modules.file.FileMpp";

	public int selectOneCount(FileVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);  // 문서검색
	}

	public List<File> documentList(FileVo vo) {
		return sqlSession.selectList(namespace + ".documentList", vo); //  문서리스트
	}

	public File documentView(FileVo vo) {
		return sqlSession.selectOne(namespace + ".documentView", vo); // 문서뷰
	}

	public File fileView(FileVo vo) {
		return sqlSession.selectOne(namespace + ".fileView", vo); // 파일뷰
	}

	public int insertDocument(File dto) {
		return sqlSession.insert(namespace + ".insertDocument", dto); // 문서등록
	}

	public int insertFile(File dto) {
		return sqlSession.insert(namespace + ".insertFile", dto); // 파일등록
	}
	public int insertUploaded(File dto) {
		return sqlSession.insert(namespace + ".insertUploaded", dto); // 파일등록 위에꺼랑 둘중하나사용하기
	}
	public File fileUploaded(FileVo vo) {
		return sqlSession.selectOne(namespace + ".fileUploaded", vo); // 파일확인
	}
	public int updateDocument(File dto) {
		return sqlSession.update(namespace + ".updateDocument", dto); // 문서수정
	}

	public int deleteDocument(FileVo vo) {
		return sqlSession.delete(namespace + ".deleteDocument", vo); // 진짜삭제
	} 

	public int updateDeleteDocument(FileVo vo) {
		return sqlSession.update(namespace + ".updateDeleteDocument", vo); // 가짜삭제
	}


	
}
