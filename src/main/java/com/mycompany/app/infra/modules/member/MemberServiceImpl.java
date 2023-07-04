package com.mycompany.app.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectList(MemberVo vo) { 
		return dao.selectList(vo); 
	}
	
	@Override
	public Member selectOne(MemberVo vo) { 
		return dao.selectOne(vo); 
	}
	
	@Override
	public int update(Member dto) {
		return dao.update(dto); 
	}
	
	@Override
	public int insert(Member dto) {
		return dao.insert(dto);
	}

	@Override
	public int uelete(Member dto) {
		return dao.uelete(dto);
	}
	
}
