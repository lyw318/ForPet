package com.forpet.model.vo;

import java.sql.Date;

public class SmallBoardComment {
	
	private int sbcommentSeq;
	private int memberSeq;
	private int smallboardSeq;
	private int sbcommentRef;
	private Date sbcommentDate;
	private String sbcommentText;
	private int sbcommentLevel;
	private String memberNickname;

	
	public SmallBoardComment() {
		// TODO Auto-generated constructor stub
	}


	public SmallBoardComment(int sbcommentSeq, int memberSeq, int smallboardSeq, int sbcommentRef, Date sbcommentDate,
			String sbcommentText, int sbcommentLevel, String memberNickname) {
		super();
		this.sbcommentSeq = sbcommentSeq;
		this.memberSeq = memberSeq;
		this.smallboardSeq = smallboardSeq;
		this.sbcommentRef = sbcommentRef;
		this.sbcommentDate = sbcommentDate;
		this.sbcommentText = sbcommentText;
		this.sbcommentLevel = sbcommentLevel;
		this.memberNickname = memberNickname;
	}


	public int getSbcommentSeq() {
		return sbcommentSeq;
	}


	public void setSbcommentSeq(int sbcommentSeq) {
		this.sbcommentSeq = sbcommentSeq;
	}


	public int getMemberSeq() {
		return memberSeq;
	}


	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}


	public int getSmallboardSeq() {
		return smallboardSeq;
	}


	public void setSmallboardSeq(int smallboardSeq) {
		this.smallboardSeq = smallboardSeq;
	}


	public int getSbcommentRef() {
		return sbcommentRef;
	}


	public void setSbcommentRef(int sbcommentRef) {
		this.sbcommentRef = sbcommentRef;
	}


	public Date getSbcommentDate() {
		return sbcommentDate;
	}


	public void setSbcommentDate(Date sbcommentDate) {
		this.sbcommentDate = sbcommentDate;
	}


	public String getSbcommentText() {
		return sbcommentText;
	}


	public void setSbcommentText(String sbcommentText) {
		this.sbcommentText = sbcommentText;
	}


	public int getSbcommentLevel() {
		return sbcommentLevel;
	}


	public void setSbcommentLevel(int sbcommentLevel) {
		this.sbcommentLevel = sbcommentLevel;
	}


	public String getMemberNickname() {
		return memberNickname;
	}


	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}


	@Override
	public String toString() {
		return "SmallBoardComment [sbcommentSeq=" + sbcommentSeq + ", memberSeq=" + memberSeq + ", smallboardSeq="
				+ smallboardSeq + ", sbcommentRef=" + sbcommentRef + ", sbcommentDate=" + sbcommentDate
				+ ", sbcommentText=" + sbcommentText + ", sbcommentLevel=" + sbcommentLevel + ", memberNickname="
				+ memberNickname + "]";
	}
	
	
}
