package com.forpet.model.vo;

import java.sql.Date;

public class MemberMsg {

	private int mMsgSeq;
	private int memberSeq;
	private String mMsgCate;
	private int mMsgRcvNo;
	private Date mMsgDate;
	private String mMsgTitle;
	private String mMsgContent;
	private String mMsgRead;
	private String mMsgType;
	
	public MemberMsg() {
		// TODO Auto-generated constructor stub
	}

	public MemberMsg(int mMsgSeq, int memberSeq, String mMsgCate, int mMsgRcvNo, Date mMsgDate, String mMsgTitle,
			String mMsgContent, String mMsgRead, String mMsgType) {
		super();
		this.mMsgSeq = mMsgSeq;
		this.memberSeq = memberSeq;
		this.mMsgCate = mMsgCate;
		this.mMsgRcvNo = mMsgRcvNo;
		this.mMsgDate = mMsgDate;
		this.mMsgTitle = mMsgTitle;
		this.mMsgContent = mMsgContent;
		this.mMsgRead = mMsgRead;
		this.mMsgType = mMsgType;
	}

	public int getmMsgSeq() {
		return mMsgSeq;
	}

	public void setmMsgSeq(int mMsgSeq) {
		this.mMsgSeq = mMsgSeq;
	}

	public int getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getmMsgCate() {
		return mMsgCate;
	}

	public void setmMsgCate(String mMsgCate) {
		this.mMsgCate = mMsgCate;
	}

	public int getmMsgRcvNo() {
		return mMsgRcvNo;
	}

	public void setmMsgRcvNo(int mMsgRcvNo) {
		this.mMsgRcvNo = mMsgRcvNo;
	}

	public Date getmMsgDate() {
		return mMsgDate;
	}

	public void setmMsgDate(Date mMsgDate) {
		this.mMsgDate = mMsgDate;
	}

	public String getmMsgTitle() {
		return mMsgTitle;
	}

	public void setmMsgTitle(String mMsgTitle) {
		this.mMsgTitle = mMsgTitle;
	}

	public String getmMsgContent() {
		return mMsgContent;
	}

	public void setmMsgContent(String mMsgContent) {
		this.mMsgContent = mMsgContent;
	}

	public String getmMsgRead() {
		return mMsgRead;
	}

	public void setmMsgRead(String mMsgRead) {
		this.mMsgRead = mMsgRead;
	}

	public String getmMsgType() {
		return mMsgType;
	}

	public void setmMsgType(String mMsgType) {
		this.mMsgType = mMsgType;
	}

	@Override
	public String toString() {
		return "MemberMsg [mMsgSeq=" + mMsgSeq + ", memberSeq=" + memberSeq + ", mMsgCate=" + mMsgCate + ", mMsgRcvNo="
				+ mMsgRcvNo + ", mMsgDate=" + mMsgDate + ", mMsgTitle=" + mMsgTitle + ", mMsgContent=" + mMsgContent
				+ ", mMsgRead=" + mMsgRead + ", mMsgType=" + mMsgType + "]";
	}
	
}
