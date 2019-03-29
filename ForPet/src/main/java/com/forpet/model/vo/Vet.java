package com.forpet.model.vo;

import java.util.List;

public class Vet {

	private int vetSeq;  //병원정보 일련번호
	private String vetName; //병원 이름
	private String vetAddress; //병원주소
	private String vetPhone; //병원 전화번호
	private int vetDaySTime; //병원평일시작시간 (24H)
	private int vetDayETime; //병원평일종료시간 (24H)
	private int vetSatSTime;//병원토요시작시간 (24H)
	private int vetSatETime;//병원토요종료시간 (24H)
	private int vetSunSTime;//병원일요일공휴일시작시간 (24H)
	private int vetSunETime;//병원일요일공휴일종료시간 (24H)
	private String vetComment; //부가정보
	
	public Vet() {
		// TODO Auto-generated constructor stub
	}

	public int getVetSeq() {
		return vetSeq;
	}

	public void setVetSeq(int vetSeq) {
		this.vetSeq = vetSeq;
	}

	public String getVetName() {
		return vetName;
	}

	public void setVetName(String vetName) {
		this.vetName = vetName;
	}

	public String getVetAddress() {
		return vetAddress;
	}

	public void setVetAddress(String vetAddress) {
		this.vetAddress = vetAddress;
	}

	public String getVetPhone() {
		return vetPhone;
	}

	public void setVetPhone(String vetPhone) {
		this.vetPhone = vetPhone;
	}

	public int getVetDaySTime() {
		return vetDaySTime;
	}

	public void setVetDaySTime(int vetDaySTime) {
		this.vetDaySTime = vetDaySTime;
	}

	public int getVetDayETime() {
		return vetDayETime;
	}

	public void setVetDayETime(int vetDayETime) {
		this.vetDayETime = vetDayETime;
	}

	public int getVetSatSTime() {
		return vetSatSTime;
	}

	public void setVetSatSTime(int vetSatSTime) {
		this.vetSatSTime = vetSatSTime;
	}

	public int getVetSatETime() {
		return vetSatETime;
	}

	public void setVetSatETime(int vetSatETime) {
		this.vetSatETime = vetSatETime;
	}

	public int getVetSunSTime() {
		return vetSunSTime;
	}

	public void setVetSunSTime(int vetSunSTime) {
		this.vetSunSTime = vetSunSTime;
	}

	public int getVetSunETime() {
		return vetSunETime;
	}

	public void setVetSunETime(int vetSunETime) {
		this.vetSunETime = vetSunETime;
	}

	public String getVetComment() {
		return vetComment;
	}

	public void setVetComment(String vetComment) {
		this.vetComment = vetComment;
	}

		public Vet(int vetSeq, String vetName, String vetAddress, String vetPhone, int vetDaySTime, int vetDayETime,
			int vetSatSTime, int vetSatETime, int vetSunSTime, int vetSunETime, String vetComment) {
		super();
		this.vetSeq = vetSeq;
		this.vetName = vetName;
		this.vetAddress = vetAddress;
		this.vetPhone = vetPhone;
		this.vetDaySTime = vetDaySTime;
		this.vetDayETime = vetDayETime;
		this.vetSatSTime = vetSatSTime;
		this.vetSatETime = vetSatETime;
		this.vetSunSTime = vetSunSTime;
		this.vetSunETime = vetSunETime;
		this.vetComment = vetComment;
	}

	@Override
	public String toString() {
		return "Vet [vetSeq=" + vetSeq + ", vetName=" + vetName + ", vetAddress=" + vetAddress + ", vetPhone="
				+ vetPhone + ", vetDaySTime=" + vetDaySTime + ", vetDayETime=" + vetDayETime + ", vetSatSTime="
				+ vetSatSTime + ", vetSatETime=" + vetSatETime + ", vetSunSTime=" + vetSunSTime + ", vetSunETime="
				+ vetSunETime + ", vetComment=" + vetComment + "]";
	}

	
	
	
}
