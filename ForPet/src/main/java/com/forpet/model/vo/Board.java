package com.forpet.model.vo;

import java.util.Date;

public class Board {

	private int boardSeq;
	private int memberSeq;
	private String boardTitle;
	private String boardContent;
	private int boardreadCount;
	private Date boardDate;
	private String memberNickname;/*글작성자*/
	private int fileCount;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public Board(int boardSeq, int memberSeq, String boardTitle, String boardContent, int boardreadCount,
			Date boardDate, String memberNickname, int fileCount) {
		super();
		this.boardSeq = boardSeq;
		this.memberSeq = memberSeq;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardreadCount = boardreadCount;
		this.boardDate = boardDate;
		this.memberNickname = memberNickname;
		this.fileCount = fileCount;
	}

	public int getBoardSeq() {
		return boardSeq;
	}

	public void setBoardSeq(int boardSeq) {
		this.boardSeq = boardSeq;
	}

	public int getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getBoardreadCount() {
		return boardreadCount;
	}

	public void setBoardreadCount(int boardreadCount) {
		this.boardreadCount = boardreadCount;
	}

	public Date getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public int getFileCount() {
		return fileCount;
	}

	public void setFileCount(int fileCount) {
		this.fileCount = fileCount;
	}

	@Override
	public String toString() {
		return "Board [boardSeq=" + boardSeq + ", memberSeq=" + memberSeq + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", boardreadCount=" + boardreadCount + ", boardDate=" + boardDate
				+ ", memberNickname=" + memberNickname + ", fileCount=" + fileCount + "]";
	}

	
	
	
	
	
	
	
}
