package com.mycompany.app.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {

	public List<CodeGroup> selectList(CodeGroupVo vo);
	
	public CodeGroup selectOne(CodeGroupVo vo);
	
	public int update(CodeGroup dto);
	
	public int delete(CodeGroup dto);
	
	public int insert(CodeGroup dto);
	
	public int uelete(CodeGroup dto);
	
	List<CodeGroupVo> getList(CodeGroupVo vo);
	
	int getListCnt(CodeGroupVo vo);
}
