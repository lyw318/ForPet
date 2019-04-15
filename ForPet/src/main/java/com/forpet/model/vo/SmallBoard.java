package com.forpet.model.vo;

import java.sql.Date;

public class SmallBoard {
	
	private int smallboardSeq;
	private int memberSeq;
	private String smallboardTitle;
	private String smallboardContent;
	private int smallboardreadCount;
	private String smallboardKategorie;
	private String memberNickname;
	private Date smallboardDate;
	
	public SmallBoard() {
	}

	public SmallBoard(int smallboardSeq, int memberSeq, String smallboardTitle, String smallboardContent,
			int smallboardreadCount, String smallboardKategorie, String memberNickname, Date smallboardDate) {
		super();
		this.smallboardSeq = smallboardSeq;
		this.memberSeq = memberSeq;
		this.smallboardTitle = smallboardTitle;
		this.smallboardContent = smallboardContent;
		this.smallboardreadCount = smallboardreadCount;
		this.smallboardKategorie = smallboardKategorie;
		this.memberNickname = memberNickname;
		this.smallboardDate = smallboardDate;
	}

	public int getSmallboardSeq() {
		return smallboardSeq;
	}

	public void setSmallboardSeq(int smallboardSeq) {
		this.smallboardSeq = smallboardSeq;
	}

	public int getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getSmallboardTitle() {
		return smallboardTitle;
	}

	public void setSmallboardTitle(String smallboardTitle) {
		this.smallboardTitle = smallboardTitle;
	}

	public String getSmallboardContent() {
		return smallboardContent;
	}

	public void setSmallboardContent(String smallboardContent) {
		this.smallboardContent = smallboardContent;
	}

	public int getSmallboardreadCount() {
		return smallboardreadCount;
	}

	public void setSmallboardreadCount(int smallboardreadCount) {
		this.smallboardreadCount = smallboardreadCount;
	}

	public String getSmallboardKategorie() {
		return smallboardKategorie;
	}

	public void setSmallboardKategorie(String smallboardKategorie) {
		this.smallboardKategorie = smallboardKategorie;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public Date getSmallboardDate() {
		return smallboardDate;
	}

	public void setSmallboardDate(Date smallboardDate) {
		this.smallboardDate = smallboardDate;
	}

	@Override
	public String toString() {
		return "SmallBoard [smallboardSeq=" + smallboardSeq + ", memberSeq=" + memberSeq + ", smallboardTitle="
				+ smallboardTitle + ", smallboardContent=" + smallboardContent + ", smallboardreadCount="
				+ smallboardreadCount + ", smallboardKategorie=" + smallboardKategorie + ", memberNickname="
				+ memberNickname + ", smallboardDate=" + smallboardDate + "]";
	}
	
	
	

}
