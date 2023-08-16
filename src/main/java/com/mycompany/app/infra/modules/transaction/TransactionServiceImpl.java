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

	@Override
	public int withdraw(Transaction dto) {
		int withdraw = dao.withdraw(dto);
        if (withdraw > 0) {
            // 출금 성공 시 계좌 잔액을 감소시킵니다.
        	dao.updateAccountBalanceForWithdraw(dto);
        }
        return withdraw;
	}
	
	@Override
	public int deposit(Transaction dto) {
        int deposit = dao.deposit(dto);
        if (deposit > 0) {
            // 입금 성공 시 계좌 잔액을 증가시킵니다.
        	dao.updateAccountBalanceForDeposit(dto);
        }
        return deposit;
	}
	
	@Override
	public int transfer(Transaction dto) {
	    int transfer = dao.transfer(dto);
	    if (transfer > 0) {
	    	// 입금 성공 시 계좌 잔액을 증가시킵니다.
	        dao.updateAccountBalanceForTransfer(dto);
	    }
	    return transfer;
	}

	@Override
	public List<Transaction> selectListByAccountSeqAndKeyword(TransactionVo vo) {
		return dao.selectListByAccountSeqAndKeyword(vo);
	}
}
