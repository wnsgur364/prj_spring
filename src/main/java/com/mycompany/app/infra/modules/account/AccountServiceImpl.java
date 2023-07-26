package com.mycompany.app.infra.modules.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.app.infra.modules.member.MemberVo;

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

	@Override
	public int accountAdd(Account dto) {
		return dao.accountAdd(dto);
	}
	
	@Override
	public Account getAccountInfoByMemberSeq(String member_seq) {
		MemberVo vo = new MemberVo();
		vo.setSeq(member_seq);
        List<Account> accounts = dao.selectList(vo);

        if (accounts != null && !accounts.isEmpty()) {
            // 여기서는 하나의 Account 정보만 반환하도록 예시로 작성합니다.
            // 만약 여러 개의 Account 정보를 조회하고 처리해야 한다면 추가 로직이 필요합니다.
            return accounts.get(0);
        }

        return null;
    }
}
