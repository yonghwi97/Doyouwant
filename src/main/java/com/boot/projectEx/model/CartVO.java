package com.boot.projectEx.model;

public class CartVO {
	
	//DB 테이블에 있는 필드
	private int cartNo;
	private String memId;
	private int prdNo;
	private int count;
	
	// DB 테이블에는 없지만
	// Mapper에서 받아서 View에 출력할 때 사용할 필드
	private String prdName;
	private int prdPrice;
	private String prdImg;
	
	
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getPrdNo() {
		return prdNo;
	}
	public void setPrdNo(int prdNo) {
		this.prdNo = prdNo;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
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
	public String getPrdImg() {
		return prdImg;
	}
	public void setPrdImg(String prdImg) {
		this.prdImg = prdImg;
	}
	@Override
	public String toString() {
		return "CartVO [cartNo=" + cartNo + ", memId=" + memId + ", prdNo=" + prdNo + ", count=" + count + ", prdName="
				+ prdName + ", prdPrice=" + prdPrice + ", prdImg=" + prdImg + "]";
	}
	
	

}
