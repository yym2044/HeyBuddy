package com.owl.heybuddy.modules.plan;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.owl.heybuddy.modules.plan.Plan;
import com.owl.heybuddy.modules.plan.PlanVo;
import com.owl.heybuddy.modules.plan.PlanDao;

@Service
public class PlanServiceImpl implements PlanService {

	@Autowired
	PlanDao dao;

	@Override
	public int selectOneCount(PlanVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Plan> selectList(PlanVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public int insert(Plan dto) throws Exception {
		/* dto.setRegDateTime(UtilDateTime.nowDate()); */

		dao.insert(dto); // 순서대로 하는거 잊지마셈.
		
		return 1;

	}


	@Override
	public int update(Plan dto) throws Exception {


		return 1;
	}

	@Override
	public int delete(PlanVo vo) throws Exception {


		return 1;
	}

	/*
	 * @Override public Member selectGender(MemberVo vo) throws Exception { return
	 * dao.selectGender(vo); }
	 */


	@Override
	public Plan selectOne(PlanVo vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Plan selectOneLogin(Plan dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateDelete(PlanVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
