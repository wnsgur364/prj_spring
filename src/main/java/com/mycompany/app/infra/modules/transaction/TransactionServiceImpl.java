package com.mycompany.app.infra.modules.transaction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TransactionServiceImpl implements TransactionService {
	
	@Autowired
	TransactionDao dao;
	
	@Override
	public int selectOneCount(TransactionVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Transaction> selectList(TransactionVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Transaction selectOne(TransactionVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Transaction dto) {
		return dao.update(dto);
	}

	@Override
	public int insert(Transaction dto) {
		return dao.insert(dto);
	}

	@Override
	public int uelete(Transaction dto) {
		return dao.uelete(dto);
	}

}