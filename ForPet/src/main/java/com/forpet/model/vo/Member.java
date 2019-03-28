package com.forpet.model.vo;

import java.util.Date;

public class Member {

	private int memberSeq;
	private String memberEmail;
	private String memberPassword;
	private String memberNickname;
	private String memberName;
	private int memberPhone;
	private String memberAddress;
	private String memberType;
	private Date memberEnrolldate;
	private Date memberQuitdate;
	
	public Member() {}

	public Member(int memberSeq, String memberEmail, String memberPassword, String memberNickname, String memberName,
			int memberPhone, String memberAddress, String memberType, Date memberEnrolldate, Date memberQuitdate) {
		super();
		this.memberSeq = memberSeq;
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
		this.memberNickname = memberNickname;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.memberAddress = memberAddress;
		this.memberType = memberType;
		this.memberEnrolldate = memberEnrolldate;
		this.memberQuitdate = memberQuitdate;
	}

	public int getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(int memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberAddress() {
		return memberAddress;
	}

	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public Date getMemberEnrolldate() {
		return memberEnrolldate;
	}

	public void setMemberEnrolldate(Date memberEnrolldate) {
		this.memberEnrolldate = memberEnrolldate;
	}

	public Date getMemberQuitdate() {
		return memberQuitdate;
	}

	public void setMemberQuitdate(Date memberQuitdate) {
		this.memberQuitdate = memberQuitdate;
	}

	@Override
	public String toString() {
		return "Member [memberSeq=" + memberSeq + ", memberEmail=" + memberEmail + ", memberPassword=" + memberPassword
				+ ", memberNickname=" + memberNickname + ", memberName=" + memberName + ", memberPhone=" + memberPhone
				+ ", memberAddress=" + memberAddress + ", memberType=" + memberType + ", memberEnrolldate="
				+ memberEnrolldate + ", memberQuitdate=" + memberQuitdate + "]";
	}

	
	
	
}
