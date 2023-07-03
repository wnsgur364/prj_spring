package com.mycompany.app.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	
	@Inject
	@Resource(name =  "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public CodeGroup selectOne(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	public int update(CodeGroup dto) { return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(CodeGroup dto) { return sqlSession.delete(namespace + ".delete", dto); }
	
	public int uelete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete", dto); }
	
	public int insert(CodeGroup dto) { return sqlSession.insert(namespace + ".insert", dto); }
	
}
