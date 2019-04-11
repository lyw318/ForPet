package com.forpet.model.vo;

import java.sql.Date;

public class BoardComment {
	
	private int commentSeq;
	private int memberSeq;
	private int boardSeq;
	private int commentRef;
	private Date commentDate;
	private String commentText;
	private int commentLevel;
	private String memberNickname;
	
	
	public BoardComment() {
		// TODO Auto-generated constructor stub
	}


	public BoardComment(int commentSeq, int memberSeq, int boardSeq, int commentRef, Date commentDate,
			String commentText, int commentLevel, String memberNickname) {
		super();
		this.commentSeq = commentSeq;
		this.memberSeq = memberSeq;
		this.boardSeq = boardSeq;
		this.commentRef = commentRef;
		this.commentDate = commentDate;
		this.commentText = commentText;
		this.commentLevel = commentLevel;
		this.memberNickname = memberNickname;
	}


	public int getCommentSeq() {
		return commentSeq;
	}


	public void setCommentSeq(int commentSeq) {
		this.commentSeq = commentSeq;
	}


	public int getMemberSeq() {
		return memberSeq;
	}


	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}


	public int getBoardSeq() {
		return boardSeq;
	}


	public void setBoardSeq(int boardSeq) {
		this.boardSeq = boardSeq;
	}


	public int getCommentRef() {
		return commentRef;
	}


	public void setCommentRef(int commentRef) {
		this.commentRef = commentRef;
	}


	public Date getCommentDate() {
		return commentDate;
	}


	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}


	public String getCommentText() {
		return commentText;
	}


	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}


	public int getCommentLevel() {
		return commentLevel;
	}


	public void setCommentLevel(int commentLevel) {
		this.commentLevel = commentLevel;
	}


	public String getMemberNickname() {
		return memberNickname;
	}


	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}


	@Override
	public String toString() {
		return "BoardComment [commentSeq=" + commentSeq + ", memberSeq=" + memberSeq + ", boardSeq=" + boardSeq
				+ ", commentRef=" + commentRef + ", commentDate=" + commentDate + ", commentText=" + commentText
				+ ", commentLevel=" + commentLevel + ", memberNickname=" + memberNickname + "]";
	}
	
	


	
	
	


	
	
	

}
