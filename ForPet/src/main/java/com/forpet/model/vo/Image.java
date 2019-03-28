package com.forpet.model.vo;

public class Image {
	private String filename;
	private int refseq;
	private int priority;
	
	public Image() {}
	
	public Image(String filename, int refseq, int priority) {
		this.filename = filename;
		this.refseq = refseq;
		this.priority = priority;
	}
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getRefseq() {
		return refseq;
	}
	public void setRefseq(int refseq) {
		this.refseq = refseq;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}

	@Override
	public String toString() {
		return "Image [filename=" + filename + ", refseq=" + refseq + ", priority=" + priority + "]";
	}
	

}
