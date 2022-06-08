package com.owl.heybuddy.modules.file;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.owl.heybuddy.modules.member.Member;
  


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
	public List<File> documentListTemp(FileVo vo) {
		return sqlSession.selectList(namespace + ".documentListTemp", vo); //  임시저장 문서리스트
	}
	public List<File> selectListSpaceMember(FileVo vo) {
		return sqlSession.selectList(namespace + ".selectListSpaceMember", vo); // 스페이스멤버리스트
	}
	public List<File> selectListMemberInSpace(FileVo vo) {
		return sqlSession.selectList(namespace + ".selectListMemberInSpace", vo);
	}

	/*
	 * public HashMap<String, Object> getCommentList(Long bid) { HashMap<String,
	 * Object> map = new HashMap<>(); Optional<BoardEntity> boardEntity =
	 * boardRepository.findById(bid); List<BoardCommentEntity>
	 * boardCommentEntityList =
	 * boardCommentQueryRepository.findByBoardId(boardEntity.get());
	 * 
	 * List<BoardCommentDto> boardCommentDtoList = new ArrayList<>(); // 댓글 리스트
	 * List<Long> ccCountList = new ArrayList<>(); // 대댓글 갯수 카운트
	 * 
	 * for (int i = 0; i < boardCommentEntityList.size(); i++) {
	 * boardCommentDtoList.add(boardCommentEntityList.get(i).toDto()); //댓글 리스트
	 * ccCountList.add(boardCommentQueryRepository.findReCommentCnt(
	 * boardCommentEntityList.get(i).getId())); //대댓글 갯수 카운트 } map.put("list",
	 * boardCommentDtoList); map.put("commentCnt", ccCountList);
	 * 
	 * return map; }
	 */
	


		
	public int selectOneCountSpaceMember(FileVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCountSpaceMember", vo); // 회원검색 (공유자검색시)
	}
	public File documentView(FileVo vo) {
		return sqlSession.selectOne(namespace + ".documentView", vo); // 문서뷰
	}   
	public File documentViewTemp(FileVo vo) {
		return sqlSession.selectOne(namespace + ".documentViewTemp", vo); // 임시 문서뷰
	}
	public File selectOneMenu(FileVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneMenu", vo); // 메뉴달라짐
	}
	public List<File>  profileUploaded(FileVo vo) {
		return sqlSession.selectOne(namespace + ".profileUploaded", vo); // 회원사진 확인
	}
	public List<File> fileUploaded(FileVo vo) {
		return sqlSession.selectList(namespace + ".fileUploaded", vo); // 파일확인
	}
	public Member selectOneSpace(FileVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneSpace", vo);
	}
	public int insertDocument(File dto) {
		return sqlSession.insert(namespace + ".insertDocument", dto); // 문서등록
	}
	public int insertDocumentTemp(File dto) {
		return sqlSession.insert(namespace + ".insertDocumentTemp", dto); // 임시문서등록
	}
	public int insertUploaded(File dto) {
		return sqlSession.insert(namespace + ".insertUploaded", dto); // 파일등록 
	}
	public int updateDocument(File dto) {
		return sqlSession.update(namespace + ".updateDocument", dto); // 문서수정
	}
	public int updateUploaded(File dto) {
		return sqlSession.update(namespace + ".updateUploaded", dto); // 파일수정
	}
	public int deleteDocument(FileVo vo) {
		return sqlSession.delete(namespace + ".deleteDocument", vo); // 진짜삭제
	} 
	public int updateDeleteDocument(FileVo vo) {
		return sqlSession.update(namespace + ".updateDeleteDocument", vo); // 가짜삭제
	}
    public List<File> commentList(FileVo vo) throws Exception {   //모댓글리스트
        return sqlSession.selectList(namespace + ".commentList", vo);
    }
	public List<File> commentList2(FileVo vo) throws Exception {  //대댓글리스트
        return sqlSession.selectList(namespace + ".commentList", vo);
    }
    public List<File> commentList(File dto) throws Exception {
        return sqlSession.selectList(namespace + ".commentList", dto);
    }
    public int commentCreate(File dto) throws Exception {   //댓글등록
    	return  sqlSession.insert(namespace + ".commentCreate", dto);
    }
    public int commentUpdate(File dto) throws Exception {   //댓글수정
    	return sqlSession.update(namespace + ".commentUpdate", dto);
    }
    public int commentDelete(FileVo vo) throws Exception {   //댓글삭제 
    	return sqlSession.delete(namespace + ".commentDelete", vo);
    }


}
