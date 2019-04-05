package com.forpet.model.vo;

public class VetServ {

	private int vetServiceSeq;
	private int vetSeq;
	private String vetItem;
	
	public VetServ() {
		// TODO Auto-generated constructor stub
	}

	public VetServ(int vetServiceSeq, int vetSeq, String vetItem) {
		super();
		this.vetServiceSeq = vetServiceSeq;
		this.vetSeq = vetSeq;
		this.vetItem = vetItem;
	}

	public int getVetServiceSeq() {
		return vetServiceSeq;
	}

	public void setVetServiceSeq(int vetServiceSeq) {
		this.vetServiceSeq = vetServiceSeq;
	}

	public int getVetSeq() {
		return vetSeq;
	}

	public void setVetSeq(int vetSeq) {
		this.vetSeq = vetSeq;
	}

	public String getVetItem() {
		return vetItem;
	}

	public void setVetItem(String vetItem) {
		this.vetItem = vetItem;
	}

	
	
	
	
}
