package com.forpet.model.vo;

import java.sql.Date;

public class Notice {
	
	private int noticeSeq;
	private int memberSeq;
	private String memberNickname; //게시글 작성자를 닉네임으로 보여주기
	private String noticeTitle;
	private String noticeContent;
	private int readCount;
	private Date noticeDate;
	
	public Notice() {}

	public Notice(int noticeSeq, int memberSeq, String memberNickname, String noticeTitle, String noticeContent,
			int readCount, Date noticeDate) {
		super();
		this.noticeSeq = noticeSeq;
		this.memberSeq = memberSeq;
		this.memberNickname = memberNickname;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.readCount = readCount;
		this.noticeDate = noticeDate;
	}

	public int getNoticeSeq() {
		return noticeSeq;
	}
	public void setNoticeSeq(int noticeSeq) {
		this.noticeSeq = noticeSeq;
	}
	public int getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	@Override
	public String toString() {
		return "Notice [noticeSeq=" + noticeSeq + ", memberSeq=" + memberSeq + ", memberNickname=" + memberNickname
				+ ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent + ", readCount=" + readCount
				+ ", noticeDate=" + noticeDate + "]";
	}

	
}
