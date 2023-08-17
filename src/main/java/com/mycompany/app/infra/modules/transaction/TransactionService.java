package com.mycompany.app.infra.modules.transaction;

import java.util.List;

public interface TransactionService {

	public int selectOneCount(TransactionVo vo);
	public List<Transaction> selectList(TransactionVo vo);
	public Transaction selectOne(TransactionVo vo);
	public int update(Transaction dto);
	public int insert(Transaction dto);
	public int uelete(Transaction dto);
	public int withdraw(Transaction dto);
	public int deposit(Transaction dto);
	public int transfer(Transaction dto);
	public List<Transaction> selectListByAccountSeqAndKeyword(TransactionVo vo);
	public Transaction selectOneByAccountSeq(TransactionVo vo);
}
