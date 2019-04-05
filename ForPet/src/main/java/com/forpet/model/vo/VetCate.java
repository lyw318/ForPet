package com.forpet.model.vo;

public class VetCate {

	private int vetCategorySeq;
	private int vetSeq;
	private String animalType;
	
	public VetCate() {
		// TODO Auto-generated constructor stub
	}

	public int getVetCategorySeq() {
		return vetCategorySeq;
	}

	public void setVetCategorySeq(int vetCategorySeq) {
		this.vetCategorySeq = vetCategorySeq;
	}

	public int getVetSeq() {
		return vetSeq;
	}

	public void setVetSeq(int vetSeq) {
		this.vetSeq = vetSeq;
	}

	public String getAnimalType() {
		return animalType;
	}

	public void setAnimalType(String animalType) {
		this.animalType = animalType;
	}

	public VetCate(int vetCategorySeq, int vetSeq, String animalType) {
		super();
		this.vetCategorySeq = vetCategorySeq;
		this.vetSeq = vetSeq;
		this.animalType = animalType;
	}

	@Override
	public String toString() {
		return "VetCate [vetCategorySeq=" + vetCategorySeq + ", vetSeq=" + vetSeq + ", animalType=" + animalType + "]";
	}
	
	
	
}
