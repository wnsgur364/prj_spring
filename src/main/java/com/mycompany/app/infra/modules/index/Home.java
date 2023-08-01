package com.mycompany.app.infra.modules.index;

public class Home {
	
	private Object header;
	private String resultCode;
	private String resultMsg;
	
	private Object body;
	private Integer pageNo;
	private Integer totalCount;
	private Integer numOfRows;
	
	private Object items;
	private String YYYY;
	private String MM;
	private String KIT_EXPRT_QTY;
	
// 	----
	
	public Object getHeader() {
		return header;
	}
	public void setHeader(Object header) {
		this.header = header;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public Object getBody() {
		return body;
	}
	public void setBody(Object body) {
		this.body = body;
	}
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getNumOfRows() {
		return numOfRows;
	}
	public void setNumOfRows(Integer numOfRows) {
		this.numOfRows = numOfRows;
	}
	public Object getItems() {
		return items;
	}
	public void setItems(Object items) {
		this.items = items;
	}
	public String getYYYY() {
		return YYYY;
	}
	public void setYYYY(String yYYY) {
		YYYY = yYYY;
	}
	public String getMM() {
		return MM;
	}
	public void setMM(String mM) {
		MM = mM;
	}
	public String getKIT_EXPRT_QTY() {
		return KIT_EXPRT_QTY;
	}
	public void setKIT_EXPRT_QTY(String kIT_EXPRT_QTY) {
		KIT_EXPRT_QTY = kIT_EXPRT_QTY;
	}
}
