package com.owl.heybuddy.modules.plan;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.owl.heybuddy.modules.plan.Plan;
import com.owl.heybuddy.modules.plan.PlanVo;

@Repository
public class PlanDao {

	@Inject
	private SqlSession sqlSession;
	  
	private static String namespace = "com.owl.heybuddy.modules.plan.PlanMpp";
	
	public int selectOneCount(PlanVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	public List<Plan> selectList(PlanVo vo){ List<Plan> list = sqlSession.selectList(namespace + ".selectList", vo); return list;}
	public List<Plan> selectListSpace(){ List<Plan> list = sqlSession.selectList(namespace + ".selectListSpace", ""); return list;}
	public List<Plan> selectListMember(){ List<Plan> list = sqlSession.selectList(namespace + ".selectListMember", ""); return list;}
	public List<Plan> selectListMemberInSpace(){ List<Plan> list = sqlSession.selectList(namespace + ".selectListMemberInSpace", ""); return list;}
	public List<Plan> selectListMySpace(){ List<Plan> list = sqlSession.selectList(namespace + ".selectListMySpace", ""); return list;}
	/*
	 * public Plan selectOne(PlanVo vo) { return sqlSession.selectOne(namespace +
	 * ".selectOne", vo);} public Plan selectOneLogin(Plan dto) { return
	 * sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
	 */
	
	
	// insertMemberEmail 이거 관련 함수 만드시고 그 함수를 serviceimpl 에서 호출

	
	// insert
	public int insert(Plan dto){ return sqlSession.insert(namespace + ".insert", dto);}

	// update
	public int update(Plan dto) { return sqlSession.update(namespace + ".update", dto);}
	
	
	// delete
	public int deleteNumber(PlanVo vo) { return sqlSession.delete(namespace + ".deleteNumber", vo);}
	
	// login
	
	
	/*
	 * public int delete(MemberVo vo) { return sqlSession.update(namespace +
	 * ".delete", vo);} public int updateDelete(MemberVo vo) { return
	 * sqlSession.update(namespace + ".updateDelete", vo);}
	 */
}
