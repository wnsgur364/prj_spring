package com.mycompany.app.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.modules.member.MemberMapper";
	
	public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Member> selectList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public Member loginProc(MemberVo vo) { return sqlSession.selectOne(namespace + ".loginProc", vo); }
	public Member loginXdmProc(MemberVo vo) { return sqlSession.selectOne(namespace + ".loginXdmProc", vo); }
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Member dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(Member dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int selectOneIdCheck(MemberVo vo){ return sqlSession.selectOne(namespace + ".selectOneIdCheck", vo); }
		
//	uploaded
	public int insertUploaded(Member dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
}
 