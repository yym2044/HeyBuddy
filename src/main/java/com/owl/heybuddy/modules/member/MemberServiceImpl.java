package com.owl.heybuddy.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.owl.heybuddy.common.util.UtilDateTime;
import com.owl.heybuddy.common.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectListSpaceMember(MemberVo vo) throws Exception { // 스페이스리스트
		return dao.selectListSpaceMember(vo);
	}

	@Override
	public List<Member> memberList(MemberVo vo) throws Exception { // 회원리스트
		return dao.memberList(vo);
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception { // 회원검색
		return dao.selectOneCount(vo);
	}

	@Override
	public int selectOneCountSpaceMember(MemberVo vo) throws Exception { // 스페이스멤버
		return dao.selectOneCountSpaceMember(vo);
	}

	@Override
	public Member selectOneSidebar(MemberVo vo) throws Exception { // 사이드바상단
		return dao.selectOneSidebar(vo);
	}

	@Override
	public Member memberView(MemberVo vo) throws Exception { // 회원뷰
		return dao.memberView(vo);
	}

	@Override
	public int insertSignUp(Member dto) throws Exception { // 회원SignUp
		return dao.insertSignUp(dto);
	}

	@Override
	public int insertMember(Member dto) throws Exception { // 회원등록
		/* dto.setRegDateTime(UtilDateTime.nowDate()); */
		dao.insertMember(dto);

		int j = 0;
		for (MultipartFile multipartFile : dto.getFile0()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");

			UtilUpload.uploadProfile(multipartFile, pathModule, dto);

			dto.setTableName("hybdMemberUploaded");
			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setPseq(dto.getHymmSeq());

			dao.insertUploaded(dto);

			j++;
		}
		return 1;
	}

	public int updateMember(Member dto) throws Exception { // 회원수정

		dao.updateMember(dto);

		String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
		UtilUpload.uploadProfile(dto.getFile0()[0], pathModule, dto);

		dto.setTableName("hybdMemberUploaded");
		dto.setPseq(dto.getHymmSeq());
		dao.updateUploaded(dto);
		return 1;
	}

	@Override
	public int deleteMember(MemberVo vo) { // 회원삭제
		return dao.deleteMember(vo);
	}

	@Override
	public int updateDeleteMember(MemberVo vo) throws Exception { // 회원가짜삭제
		return dao.updateDeleteMember(vo);
	}

	@Override
	public Member profileUploaded(MemberVo vo) throws Exception { // 회원사진
		return dao.profileUploaded(vo);
	}

	@Override
	public Member selectOneLogin(Member dto) { // 회원로그인
		return dao.selectOneLogin(dto);
	}

//	영민 추가
	public int selectOneCountMemberInSpace(MemberVo vo) throws Exception {
		return dao.selectOneCountMemberInSpace(vo);
	}

	public List<Member> selectListMemberInSpace(MemberVo vo) throws Exception {
		return dao.selectListMemberInSpace(vo);
	}

	public Member selectOneMemberInSpace(MemberVo vo) throws Exception {
		return dao.selectOneMemberInSpace(vo);
	}

	public int insertMemberInSpace(Member dto) throws Exception {

		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());

		dao.insertMemberInSpace(dto);
		dao.insertSpaceMember(dto);

		return 1;
	}

	public Member selectOneSpace(MemberVo vo) throws Exception {
		return dao.selectOneSpace(vo);
	}

	public int updateMemberProfile(Member dto) throws Exception {

		dao.updateMemberProfile(dto);

		String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");

		UtilUpload.uploadProfile(dto.getFile0()[0], pathModule, dto);

		dto.setTableName("hybdMemberUploaded");
		dto.setPseq(dto.getHymmSeq());

		dao.updateUploaded_2(dto);

		return 1;
	}
}
