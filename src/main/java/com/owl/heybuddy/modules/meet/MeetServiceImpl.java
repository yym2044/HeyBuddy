package com.owl.heybuddy.modules.meet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.owl.heybuddy.common.util.UtilDateTime;

@Service
public class MeetServiceImpl implements MeetService {

	@Autowired
	MeetDao dao;
	
	public List<Meet> selectListRoom(MeetVo vo) throws Exception {
		
		return dao.selectListRoom(vo);
		
	}
	public List<Meet> selectListRoomMember() throws Exception {
		return dao.selectListRoomMember();
	}
	public int selectOneCount(MeetVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	public Meet selectOneRoom(MeetVo vo) throws Exception {
		return dao.selectOneRoom(vo);
	}
	public List<Meet> selectListOneRoomMember(MeetVo vo) throws Exception {
		return dao.selectListOneRoomMember(vo);
	}
	public int startRoom(Meet dto) throws Exception {
		
		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		
		dao.insertRoom(dto);
		
		
		// 방장 넣기
		dto.setHostNy(1);
		dao.insertRoomMember(dto);
		
		return 1;
	}
	
	public int enterRoom(Meet dto) throws Exception {
		
		dto.setHostNy(0);
		dao.insertRoomMember(dto);
		
		return 1;
	}
	
	public int leaveRoom(MeetVo vo) throws Exception {
		
		if(vo.getHostNy() == 1) {
			dao.deleteRoomMemberAll(vo);
			dao.deleteRoom(vo);
		} else {
			dao.deleteRoomMember(vo);
		}
		
		return 1;
	}
}
