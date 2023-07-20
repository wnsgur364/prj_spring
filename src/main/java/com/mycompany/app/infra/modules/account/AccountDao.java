package com.mycompany.app.infra.modules.account;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AccountDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.modules.account.AccountMapper";
			
	public int selectOneCount(AccountVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Account> selectList(AccountVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	public Account selectOne(AccountVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Account dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Account dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(Account dto) { return sqlSession.insert(namespace + ".insert", dto); }
	
}
