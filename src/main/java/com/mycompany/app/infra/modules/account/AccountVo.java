package com.mycompany.app.infra.modules.account;

import com.mycompany.app.infra.common.base.BaseVo;

public class AccountVo extends BaseVo {
	
	private Integer shOption;
	private String shKeyword;
	private String seq;
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
}
