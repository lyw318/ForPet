package com.forpet.model.vo;

public class Pet {

	private int petSeq;
	private String petName;
	private int petBirth;
	private String petType;
	private String petType2;
	private String petRenamedImage;
	
	public Pet() {}

	public Pet(int petSeq, String petName, int petBirth, String petType, String petType2, String petRenamedImage) {
		super();
		this.petSeq = petSeq;
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

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public int getPetBirth() {
		return petBirth;
	}

	public void setPetBirth(int petBirth) {
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
		return "Pet [petSeq=" + petSeq + ", petName=" + petName + ", petBirth=" + petBirth + ", petType=" + petType
				+ ", petType2=" + petType2 + ", petRenamedImage=" + petRenamedImage + "]";
	}
	
	
	
}
