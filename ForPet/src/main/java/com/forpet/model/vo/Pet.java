package com.forpet.model.vo;

import java.util.Date;

public class Pet {

	private int petSeq;
	private int memberSeq;
	private String petName;
	private Date petBirth;
	private String petType;
	private String petType2;
	private String petRenamedImage;
	
	public Pet() {}

	public Pet(int petSeq, int memberSeq, String petName, Date petBirth, String petType, String petType2,
			String petRenamedImage) {
		super();
		this.petSeq = petSeq;
		this.memberSeq = memberSeq;
		this.petName = petName;
		this.petBirth = petBirth;
		this.petType = petType;
		this.petType2 = petType2;
		this.petRenamedImage = petRenamedImage;
	}

	public int getPetSeq() {
		return petSeq;
	}

	public void setPetSeq(int petSeq) {
		this.petSeq = petSeq;
	}

	public int getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public Date getPetBirth() {
		return petBirth;
	}

	public void setPetBirth(Date petBirth) {
		this.petBirth = petBirth;
	}

	public String getPetType() {
		return petType;
	}

	public void setPetType(String petType) {
		this.petType = petType;
	}

	public String getPetType2() {
		return petType2;
	}

	public void setPetType2(String petType2) {
		this.petType2 = petType2;
	}

	public String getPetRenamedImage() {
		return petRenamedImage;
	}

	public void setPetRenamedImage(String petRenamedImage) {
		this.petRenamedImage = petRenamedImage;
	}

	@Override
	public String toString() {
		return "Pet [petSeq=" + petSeq + ", memberSeq=" + memberSeq + ", petName=" + petName + ", petBirth=" + petBirth
				+ ", petType=" + petType + ", petType2=" + petType2 + ", petRenamedImage=" + petRenamedImage + "]";
	}

	
	
	
}
