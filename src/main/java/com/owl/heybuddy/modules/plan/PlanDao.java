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
	public Plan selectOne(PlanVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public Plan selectOneLogin(Plan dto) { return sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
	public List<Plan> selectListNation(){ List<Plan> list = sqlSession.selectList(namespace + ".selectListNation", ""); return list;}
	public Plan selectGender(PlanVo vo) { return sqlSession.selectOne(namespace + ".selectGender", vo);}
	
	
	// insertMemberEmail 이거 관련 함수 만드시고 그 함수를 serviceimpl 에서 호출

	
	// insert
	public int insert(Plan dto){ return sqlSession.insert(namespace + ".insert", dto);}
	public int insertMemberEmail(Plan dto) {  return sqlSession.insert(namespace + ".insertMemberEmail", dto);}
	public int insertMemberPhone(Plan dto) {  return sqlSession.insert(namespace + ".insertMemberPhone", dto);}
	public int insertMemberAddress(Plan dto) {  return sqlSession.insert(namespace + ".insertMemberAddress", dto);}
	public int insertMemberNationality(Plan dto) {  return sqlSession.insert(namespace + ".insertMemberNationality", dto);}

	// update
	public int update(Plan dto) { return sqlSession.update(namespace + ".update", dto);}
	public int updateNumber(Plan dto) { return sqlSession.update(namespace + ".updateNumber", dto);}
	public int updateEmail(Plan dto) { return sqlSession.update(namespace + ".updateEmail", dto);}
	public int updateMemberAddress(Plan dto) { return sqlSession.update(namespace + ".updateMemberAddress", dto);}
	public int updateMemberNationality(Plan dto) { return sqlSession.update(namespace + ".updateMemberNationality", dto);}
	public int updateDelete(PlanVo vo) { return sqlSession.update(namespace + ".updateDelete", vo);}
	
	
	// delete
	public int deleteNumber(PlanVo vo) { return sqlSession.delete(namespace + ".deleteNumber", vo);}
	public int deleteEmail(PlanVo vo) { return sqlSession.delete(namespace + ".deleteEmail", vo);}
	public int deleteAddress(PlanVo vo) { return sqlSession.delete(namespace + ".deleteAddress", vo);}
	public int deleteNationality(PlanVo vo) { return sqlSession.delete(namespace + ".deleteNationality", vo);}
	public int delete(PlanVo vo) { return sqlSession.delete(namespace + ".delete", vo);}
	
	// login
	
	
	/*
	 * public int delete(MemberVo vo) { return sqlSession.update(namespace +
	 * ".delete", vo);} public int updateDelete(MemberVo vo) { return
	 * sqlSession.update(namespace + ".updateDelete", vo);}
	 */
}
