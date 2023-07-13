package com.mycompany.app.infra.modules.member;

import java.util.List;

public interface MemberService {

	public int selectOneCount(MemberVo vo);
	public List<Member> selectList(MemberVo vo);
	public Member selectOne(MemberVo vo);
	public Member loginProc(MemberVo vo);
	public int update(Member dto);
	public int insert(Member dto);
	public int uelete(Member dto);
	public int selectOneIdCheck(MemberVo vo);
}
