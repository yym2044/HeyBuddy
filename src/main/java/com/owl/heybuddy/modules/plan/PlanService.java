package com.owl.heybuddy.modules.plan;


import java.util.List;

import com.owl.heybuddy.modules.plan.Plan;
import com.owl.heybuddy.modules.plan.PlanVo;

public interface PlanService {

	
	
	
	public int selectOneCount(PlanVo vo) throws Exception;
	public List<Plan> selectList(PlanVo vo) throws Exception; 
	public List<Plan> selectListSpace() throws Exception; 
	public List<Plan> selectListMember() throws Exception; 
	public Plan selectOne(PlanVo vo) throws Exception;
	public Plan selectOneLogin(Plan dto) throws Exception;
	/* public Member selectGender(MemberVo vo) throws Exception; */

	
	//insert
	public int insert(Plan dto) throws Exception; 
	
	
	
	//update
	public int update(Plan dto) throws Exception;
	public int updateDelete(PlanVo vo) throws Exception;
	// delete
	
	
	public int delete(PlanVo vo) throws Exception;
	/*
	 * public int deleteId(MemberVo vo) throws Exception; public int
	 * deleteName(MemberVo vo) throws Exception; public int deleteNumber(MemberVo
	 * vo) throws Exception; public int deleteEmail(MemberVo vo) throws Exception;
	 */
	/*
	 * * public int delete(MemberVo vo) throws Exception; public int
	 * updateDelete(MemberVo vo) throws Exception;
	 */
	
	
}
