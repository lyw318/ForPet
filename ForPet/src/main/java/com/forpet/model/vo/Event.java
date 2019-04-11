package com.forpet.model.vo;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;


public class Event {
	private int eventSeq;
	private int memberSeq;
	private String memberNickname; //게시글 작성자를 닉네임으로 보여주기
	private String eventTitle;
	private String eventContent;
	private int readCount;
	private Date eventStart;
	private String eventStartString;
	private Date eventFinish;
	private String eventFinishString;
	private String filename; //메인이미지(priority가 가장 낮은 파일) 파일명
	
	public Event () {}
	
	public void parseStringToDate() throws ParseException
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		eventStart = new Date(sdf.parse(eventStartString).getTime());
		eventFinish = new Date(sdf.parse(eventFinishString).getTime());
	}
	
	public void parseDateToString()
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		eventStartString = sdf.format(eventStart);
		eventFinishString = sdf.format(eventFinish);
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

	public String getEventStartString() {
		return eventStartString;
	}

	public void setEventStartString(String eventStartString) {
		this.eventStartString = eventStartString;
	}

	public String getEventFinishString() {
		return eventFinishString;
	}

	public void setEventFinishString(String eventFinishString) {
		this.eventFinishString = eventFinishString;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	@Override
	public String toString() {
		return "Event [eventSeq=" + eventSeq + ", memberSeq=" + memberSeq + ", memberNickname=" + memberNickname
				+ ", eventTitle=" + eventTitle + ", eventContent=" + eventContent + ", readCount=" + readCount
				+ ", eventStart=" + eventStart + ", eventStartString=" + eventStartString + ", eventFinish="
				+ eventFinish + ", eventFinishString=" + eventFinishString + ", filename=" + filename + "]";
	}

	
	
	
}
