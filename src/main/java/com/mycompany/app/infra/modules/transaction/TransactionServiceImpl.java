package com.mycompany.app.infra.modules.transaction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public int withdraw(Transaction dto) {
		int result = dao.withdraw(dto);
        if (result > 0) {
            // 출금 성공 시 계좌 잔액을 감소시킵니다.
        	dao.updateAccountBalanceForWithdraw(dto);
        }
        return result;
	}
	
	@Override
	public int deposit(Transaction dto) {
        int result = dao.deposit(dto);
        if (result > 0) {
            // 입금 성공 시 계좌 잔액을 증가시킵니다.
        	dao.updateAccountBalanceForDeposit(dto);
        }
        return result;
	}

	@Override
	public int transfer(Transaction dto) {
	    int result = dao.withdraw(dto);
	    if (result > 0) {
	    	// 출금 성공 시 받는 계좌로 입금시킵니다.
	    	dao.transfer(dto);
	    }
	    return result;
	}
}
