package com.forpet.model.vo;

public class HealthInfo {
	private int infoSeq;
	private String petType;
	private String petTypeName;
	private String infoTitle;
	private String infoContent;
	private String filename; //메인이미지(priority가 가장 낮은 파일) 파일명
	
	public HealthInfo() {}
	
	public void createPetTypeName() {
		if(petType == null || petType.length() <1)
		{
			petType = "All";
		}
		switch(petType)
		{
		case "All" : petTypeName="전체"; break;
		case "Dog" : petTypeName="강아지"; break;
		case "Cat" : petTypeName="고양이"; break;
		case "Hamster" : petTypeName="햄스터"; break;
		case "GuineaPig" : petTypeName="기니피그"; break;
		case "Rabbit" : petTypeName="토끼"; break;
		case "Hedgehog" : petTypeName="고슴도치"; break;
		case "Turtle" : petTypeName="거북이"; break;
		case "Bird" : petTypeName="조류"; break;
		case "etc" : petTypeName="기타"; break;
		default : petTypeName="";
		}
	}

	public int getInfoSeq() {
		return infoSeq;
	}

	public void setInfoSeq(int infoSeq) {
		this.infoSeq = infoSeq;
	}

	public String getPetType() {
		return petType;
	}

	public void setPetType(String petType) {
		this.petType = petType;
	}

	public String getPetTypeName() {
		return petTypeName;
	}

	public void setPetTypeName(String petTypeName) {
		this.petTypeName = petTypeName;
	}

	public String getInfoTitle() {
		return infoTitle;
	}

	public void setInfoTitle(String infoTitle) {
		this.infoTitle = infoTitle;
	}

	public String getInfoContent() {
		return infoContent;
	}

	public void setInfoContent(String infoContent) {
		this.infoContent = infoContent;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	@Override
	public String toString() {
		return "HealthInfo [infoSeq=" + infoSeq + ", petType=" + petType + ", petTypeName=" + petTypeName
				+ ", infoTitle=" + infoTitle + ", infoContent=" + infoContent + ", filename=" + filename + "]";
	}

}
