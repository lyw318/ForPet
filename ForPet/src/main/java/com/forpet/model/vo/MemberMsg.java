package com.forpet.model.vo;

import java.sql.Date;

public class MemberMsg {

	private int mMsgSeq;
	private String memberNickname;
	private String mMsgCate;
	private String mMsgRcvNickname;
	private String mMsgContent;
	private Date mMsgDate;
	private String mMsgRead;
	private String mMsgType;
	
	public MemberMsg() {
		// TODO Auto-generated constructor stub
	}

	public MemberMsg(int mMsgSeq, String memberNickname, String mMsgCate, String mMsgRcvNickname, String mMsgContent,
			Date mMsgDate, String mMsgRead, String mMsgType) {
		super();
		this.mMsgSeq = mMsgSeq;
		this.memberNickname = memberNickname;
		this.mMsgCate = mMsgCate;
		this.mMsgRcvNickname = mMsgRcvNickname;
		this.mMsgContent = mMsgContent;
		this.mMsgDate = mMsgDate;
		this.mMsgRead = mMsgRead;
		this.mMsgType = mMsgType;
	}

	public int getmMsgSeq() {
		return mMsgSeq;
	}

	public void setmMsgSeq(int mMsgSeq) {
		this.mMsgSeq = mMsgSeq;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getmMsgCate() {
		return mMsgCate;
	}

	public void setmMsgCate(String mMsgCate) {
		this.mMsgCate = mMsgCate;
	}

	public String getmMsgRcvNickname() {
		return mMsgRcvNickname;
	}

	public void setmMsgRcvNickname(String mMsgRcvNickname) {
		this.mMsgRcvNickname = mMsgRcvNickname;
	}

	public String getmMsgContent() {
		return mMsgContent;
	}

	public void setmMsgContent(String mMsgContent) {
		this.mMsgContent = mMsgContent;
	}

	public Date getmMsgDate() {
		return mMsgDate;
	}

	public void setmMsgDate(Date mMsgDate) {
		this.mMsgDate = mMsgDate;
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
		return "MemberMsg [mMsgSeq=" + mMsgSeq + ", memberNickname=" + memberNickname + ", mMsgCate=" + mMsgCate
				+ ", mMsgRcvNickname=" + mMsgRcvNickname + ", mMsgContent=" + mMsgContent + ", mMsgDate=" + mMsgDate
				+ ", mMsgRead=" + mMsgRead + ", mMsgType=" + mMsgType + "]";
	}
	
}
