package com.forpet.model.vo;

import java.sql.Date;

public class Event {
	private int eventSeq;
	private int memberSeq;
	private String memberNickname; //게시글 작성자를 닉네임으로 보여주기
	private String eventTitle;
	private String eventContent;
	private int readCount;
	private Date eventStart;
	private Date eventFinish;
	
	public Event () {}
	
	public Event(int eventSeq, int memberSeq, String memberNickname, String eventTitle, String eventContent,
			int readCount, Date eventStart, Date eventFinish) {
		this.eventSeq = eventSeq;
		this.memberSeq = memberSeq;
		this.memberNickname = memberNickname;
		this.eventTitle = eventTitle;
		this.eventContent = eventContent;
		this.readCount = readCount;
		this.eventStart = eventStart;
		this.eventFinish = eventFinish;
	}

	public int getEventSeq() {
		return eventSeq;
	}

	public void setEventSeq(int eventSeq) {
		this.eventSeq = eventSeq;
	}

	public int getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getEventTitle() {
		return eventTitle;
	}

	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}

	public String getEventContent() {
		return eventContent;
	}

	public void setEventContent(String eventContent) {
		this.eventContent = eventContent;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public Date getEventStart() {
		return eventStart;
	}

	public void setEventStart(Date eventStart) {
		this.eventStart = eventStart;
	}

	public Date getEventFinish() {
		return eventFinish;
	}

	public void setEventFinish(Date eventFinish) {
		this.eventFinish = eventFinish;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	@Override
	public String toString() {
		return "Event [eventSeq=" + eventSeq + ", memberSeq=" + memberSeq + ", memberNickname=" + memberNickname
				+ ", eventTitle=" + eventTitle + ", eventContent=" + eventContent + ", readCount=" + readCount
				+ ", eventStart=" + eventStart + ", eventFinish=" + eventFinish + "]";
	}
	
}
