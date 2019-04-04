package com.forpet.model.vo;

public class MemberFriend {
	
	private int mFriendSeq;
	private int memberSeq;
	private int mFriendMateNo;
	private String mFriendNickname;
	private String mFriendFavo;
	private String mFriendType;
	
	
	public MemberFriend() {
		// TODO Auto-generated constructor stub
	}

	public MemberFriend(int mFriendSeq, int memberSeq, int mFriendMateNo, String mFriendNickname, String mFriendFavo,
			String mFriendType) {
		super();
		this.mFriendSeq = mFriendSeq;
		this.memberSeq = memberSeq;
		this.mFriendMateNo = mFriendMateNo;
		this.mFriendNickname = mFriendNickname;
		this.mFriendFavo = mFriendFavo;
		this.mFriendType = mFriendType;
	}

	public int getmFriendSeq() {
		return mFriendSeq;
	}


	public void setmFriendSeq(int mFriendSeq) {
		this.mFriendSeq = mFriendSeq;
	}


	public int getMemberSeq() {
		return memberSeq;
	}


	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}


	public int getmFriendMateNo() {
		return mFriendMateNo;
	}


	public void setmFriendMateNo(int mFriendMateNo) {
		this.mFriendMateNo = mFriendMateNo;
	}


	public String getmFriendNickname() {
		return mFriendNickname;
	}


	public void setmFriendNickname(String mFriendNickname) {
		this.mFriendNickname = mFriendNickname;
	}


	public String getmFriendFavo() {
		return mFriendFavo;
	}


	public void setmFriendFavo(String mFriendFavo) {
		this.mFriendFavo = mFriendFavo;
	}


	public String getmFriendType() {
		return mFriendType;
	}


	public void setmFriendType(String mFriendType) {
		this.mFriendType = mFriendType;
	}

	@Override
	public String toString() {
		return "MemberFriend [mFriendSeq=" + mFriendSeq + ", memberSeq=" + memberSeq + ", mFriendMateNo="
				+ mFriendMateNo + ", mFriendNickname=" + mFriendNickname + ", mFriendFavo=" + mFriendFavo
				+ ", mFriendType=" + mFriendType + "]";
	}

}