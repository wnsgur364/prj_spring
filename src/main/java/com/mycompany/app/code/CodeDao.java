package com.mycompany.app.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.code.CodeMapper";
	
	public List<Code> selectList() { return sqlSession.selectList(namespace + ".selectList", ""); }
}
