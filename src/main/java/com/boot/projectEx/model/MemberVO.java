package com.boot.projectEx.model;

public class MemberVO {
	private String memId;
	private String memPwd;
	private String memName;
	private String memEmail;
	private String memSex;
	private String memHP;
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemSex() {
		return memSex;
	}
	public void setMemSex(String memSex) {
		this.memSex = memSex;
	}
	public String getMemHP() {
		return memHP;
	}
	public void setMemHP(String memHP) {
		this.memHP = memHP;
	}
	@Override
	public String toString() {
		return "MemberVO [memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName + ", memEmail=" + memEmail
				+ ", memSex=" + memSex + ", memHP=" + memHP + "]";
	}
	
	
}
