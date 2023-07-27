package com.mycompany.app.infra.modules.member;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface MemberService {

	public int selectOneCount(MemberVo vo);
	public List<Member> selectList(MemberVo vo);
	public Member selectOne(MemberVo vo);
	public Member loginProc(MemberVo vo);
	public Member loginXdmProc(MemberVo vo);
	public int update(Member dto) throws Exception;
	public int insert(Member dto);
	public int uelete(Member dto);
	public int selectOneIdCheck(MemberVo vo);
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception;
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Member dto, String tableName) throws Exception;
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Member dto, String tableName) throws Exception;
}
