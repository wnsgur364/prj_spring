package com.mycompany.app.infra.modules.transaction;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
    public int deposit(Transaction dto) { return sqlSession.insert(namespace + ".deposit", dto); }
    public int transfer(Transaction dto) { return sqlSession.insert(namespace + ".transfer", dto); }
    public int updateAccountBalanceForWithdraw(Transaction dto) { return sqlSession.update(namespace + ".updateAccountBalanceForWithdraw", dto); }
    public int updateAccountBalanceForDeposit(Transaction dto) { return sqlSession.update(namespace + ".updateAccountBalanceForDeposit", dto); }
    public int updateAccountBalanceForTransfer(Transaction dto) { return sqlSession.update(namespace + ".updateAccountBalanceForTransfer", dto); }
    public List<Transaction> selectListByAccountSeqAndKeyword(TransactionVo vo) { return sqlSession.selectList(namespace + ".selectListByAccountSeqAndKeyword", vo); }
}
 