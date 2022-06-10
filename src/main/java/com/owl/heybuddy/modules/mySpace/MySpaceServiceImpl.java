package com.owl.heybuddy.modules.mySpace;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.owl.heybuddy.common.util.UtilUpload;

@Service
public class MySpaceServiceImpl implements MySpaceService {

	@Autowired
	MySpaceDao dao;

	@Override
	public List<MySpace> selectListMySpace(MySpaceVo vo) throws Exception { // 스페이스리스트
		return dao.selectListMySpace(vo);
	}

	@Override
	public List<MySpace> selectListMember(MySpaceVo vo) throws Exception { // 멤버리스트
		return dao.selectListMember(vo);
	}

	@Override
	public List<MySpace> selectListReceive(MySpaceVo vo) throws Exception { // 초대받은리스트
		return dao.selectListReceive(vo);
	}

	@Override
	public List<MySpace> selectListSend(MySpaceVo vo) throws Exception { // 초대리스트
		return dao.selectListSend(vo);
	}

	@Override
	public MySpace selectOneMember(MySpaceVo vo) throws Exception { // 이름으로멤버찾기
		return dao.selectOneMember(vo);
	}

	@Override
	public MySpace selectOneMySpace(MySpaceVo vo) throws Exception { // 스페이스뷰
		return dao.selectOneMySpace(vo);
	}

	@Override
	public MySpace selectOneReceive(MySpaceVo vo) throws Exception { // 초대뷰
		return dao.selectOneReceive(vo);
	}

	@Override
	public int selectOneCount(MySpaceVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int insertMySpace(MySpace dto) throws Exception { // 스페이스등록

		dao.insertMySpace(dto);
		
		dto.setTableName("hybdSpaceUploaded");
		dto.setType(0);
		dto.setDefaultNy(1);
		dto.setSort(1);
		dto.setPseq(dto.getHyspSeq());
		
		if(!dto.getFile().isEmpty()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			
			UtilUpload.uploadSpace(dto.getFile(), pathModule, dto);
			
			dao.insertUploaded(dto);
		} else {
			
			dto.setOriginalFileName("gathering1.png");
			dto.setUuidFileName("a7c849f2-eaf9-4908-a794-c4afcab9a639.png");
			dto.setExt("png");
			dto.setPath("/resources/uploaded/myspace/2022/06/02/");
			dto.setSize(88047);
			
			dao.insertUploaded(dto);
		}

		return 1;
	}

	@Override
	public int insertMySpaceHost(MySpace dto) throws Exception { // 스페이스등록(호스트등록)

		return dao.insertMySpaceHost(dto);
	}

	@Override
	public int insertMySpaceGuest(MySpace dto) throws Exception { // 스페이스멤버초대

		return dao.insertMySpaceGuest(dto);
	}

	@Override
	public int updateMySpace(MySpace dto) throws Exception { // 스페이스수정
		return dao.updateMySpace(dto);
	}

	@Override
	public int updateReceiveYes(MySpace dto) throws Exception { // 초대수락
		return dao.updateReceiveYes(dto);
	}

	@Override
	public int updateReceiveNo(MySpace dto) throws Exception { // 초대거절
		return dao.updateReceiveNo(dto);
	}

	@Override
	public int deleteMySpace(MySpaceVo vo) throws Exception { // 스페이스삭제
		return dao.deleteMySpace(vo);
	}

	@Override
	public int ueleteMySpace(MySpaceVo vo) throws Exception { // 스페이스가짜삭제
		return dao.ueleteMySpace(vo);
	}
	
	// 호스트 설정 부분
	
	@Override
	public int updateMySpaceHost(MySpace dto) throws Exception {
		
		dao.updateMySpaceHost(dto);
		
		dto.setTableName("hybdSpaceUploaded");
		dto.setPseq(dto.getHyspSeq());
		dto.setType(0);
		dto.setSort(1);
		
		if(!dto.getFile().isEmpty()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			
			UtilUpload.uploadSpace(dto.getFile(), pathModule, dto);
			
			dao.updateMySpaceUploaded(dto);
		} else {
			
			dto.setOriginalFileName("gathering1.png");
			dto.setUuidFileName("a7c849f2-eaf9-4908-a794-c4afcab9a639.png");
			dto.setExt("png");
			dto.setPath("/resources/uploaded/myspace/2022/06/02/");
			dto.setSize(88047);
			
			dao.updateMySpaceUploaded(dto);
		}
		
		return 1;
	}
	@Override
	public MySpace selectOneMySpaceHost(MySpaceVo vo) throws Exception {
		return dao.selectOneMySpaceHost(vo);
	}
	
	@Override
	public int updateHost(MySpace dto, HttpSession httpSession) throws Exception {
		
		// 새로운 호스트 설정
		dto.setHysmRoleCd("12");
		dto.setHysmHost(dto.getHymmSeq());
		dao.updateHost(dto);
		dao.updateHost2(dto);
		
		// 기존 호스트 값 변경
		dto.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		dto.setHysmRoleCd("13");
		dao.updateHost(dto);
		
		return 1;
	}
	
}