package com.boot.projectEx.model;

public class TodayVO {
	private int prdNo;
	private String prdName;
	private int prdPrice;
	private String prdImg3;
	private int todayNo;
	private String interNo;
	public int getPrdNo() {
		return prdNo;
	}
	public void setPrdNo(int prdNo) {
		this.prdNo = prdNo;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	public int getPrdPrice() {
		return prdPrice;
	}
	public void setPrdPrice(int prdPrice) {
		this.prdPrice = prdPrice;
	}
	public String getPrdImg3() {
		return prdImg3;
	}
	public void setPrdImg3(String prdImg3) {
		this.prdImg3 = prdImg3;
	}
	public int getTodayNo() {
		return todayNo;
	}
	public void setTodayNo(int todayNo) {
		this.todayNo = todayNo;
	}
	public String getInterNo() {
		return interNo;
	}
	public void setInterNo(String interNo) {
		this.interNo = interNo;
	}
	@Override
	public String toString() {
		return "TodayVO [prdNo=" + prdNo + ", prdName=" + prdName + ", prdPrice=" + prdPrice + ", prdImg3=" + prdImg3
				+ ", todayNo=" + todayNo + ", interNo=" + interNo + "]";
	}
}