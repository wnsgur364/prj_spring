package com.mycompany.app.infra.modules.transaction;

import java.sql.Date;

public class Transaction {
	
	private String seq;
	private Integer delNy;
	private Integer recipientAccountNumber;
	private Integer balance;
	private Date date;
	private String contents;
	private Date dateStart;
	private Date dateFinish;
	private String account_seq;
//	-----
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getRecipientAccountNumber() {
		return recipientAccountNumber;
	}
	public void setRecipientAccountNumber(Integer recipientAccountNumber) {
		this.recipientAccountNumber = recipientAccountNumber;
	}
	public Integer getBalance() {
		return balance;
	}
	public void setBalance(Integer balance) {
		this.balance = balance;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getDateStart() {
		return dateStart;
	}
	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}
	public Date getDateFinish() {
		return dateFinish;
	}
	public void setDateFinish(Date dateFinish) {
		this.dateFinish = dateFinish;
	}
	public String getAccount_seq() {
		return account_seq;
	}
	public void setAccount_seq(String account_seq) {
		this.account_seq = account_seq;
	}
	
}