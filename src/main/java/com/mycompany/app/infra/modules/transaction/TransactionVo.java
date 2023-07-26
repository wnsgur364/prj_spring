package com.mycompany.app.infra.modules.transaction;

import com.mycompany.app.infra.common.base.BaseVo;

public class TransactionVo extends BaseVo {

	private Integer shOption;
	private String shKeyword;
	private String seq;
	private String account_seq;
	
//	-----
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
	public String getAccount_seq() {
		return account_seq;
	}
	public void setAccount_seq(String account_seq) {
		this.account_seq = account_seq;
	}
	
}
