package com.mycompany.app.infra.modules.account;

import java.util.List;

public interface AccountService {

	public int selectOneCount(AccountVo vo);
	public List<Account> selectList(AccountVo vo);
	public Account selectOne(AccountVo vo);
	public int update (Account dto);
	public int uelete (Account dto);
	public int insert (Account dto);
	public int accountAdd (Account dto);
	public List<Account> getAccountSeqByMemberSeq(String memberSeq);
}
