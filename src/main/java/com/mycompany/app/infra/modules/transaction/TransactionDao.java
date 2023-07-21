package com.mycompany.app.infra.modules.transaction;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mycompany.app.infra.modules.codegroup.CodeGroupVo;

@Repository
public class TransactionDao {
	
	@Inject
	@Resource(name =  "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.modules.transaction.TransactionMapper";
	
	public int selectOneCount(TransactionVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Transaction> selectList(TransactionVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	public Transaction selectOne(TransactionVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Transaction dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Transaction dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(Transaction dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int withdraw(Transaction dto) { return sqlSession.insert(namespace + ".withdraw", dto); }
}
 