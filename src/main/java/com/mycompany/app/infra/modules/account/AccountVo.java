package com.mycompany.app.infra.modules.account;

import com.mycompany.app.infra.common.base.BaseVo;

public class AccountVo extends BaseVo {
	
	private Integer shOption;
	private String shKeyword;
	private String seq;
	private String member_seq;
	private String memberSeq;
//  ----
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShKeyword() {
		return shKeyword;
	}
	public void setShKeyword(String shKeyword) {
		this.shKeyword = shKeyword;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(String member_seq) {
		this.member_seq = member_seq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
}
