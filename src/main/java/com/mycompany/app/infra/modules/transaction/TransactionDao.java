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
    public int withdraw(Transaction dto) {
        int result = sqlSession.insert(namespace + ".withdraw", dto);
        if (result > 0) {
            // 출금 성공 시 계좌 잔액을 감소시킵니다.
            sqlSession.update(namespace + ".updateAccountBalanceForWithdraw", dto);
        }
        return result;
    }

    public int deposit(Transaction dto) {
        int result = sqlSession.insert(namespace + ".deposit", dto);
        if (result > 0) {
            // 입금 성공 시 계좌 잔액을 증가시킵니다.
            sqlSession.update(namespace + ".updateAccountBalanceForDeposit", dto);
        }
        return result;
    }
    
}
 