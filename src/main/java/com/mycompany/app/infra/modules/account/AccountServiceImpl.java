package com.mycompany.app.infra.modules.account;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	AccountDao dao;
	
	@Override
	public int selectOneCount(AccountVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Account> selectList(AccountVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Account selectOne(AccountVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Account dto) {
		return dao.update(dto);
	}

	@Override
	public int uelete(Account dto) {
		return dao.uelete(dto);
	}

	@Override
	public int insert(Account dto) {
		return dao.insert(dto);
	}
}
