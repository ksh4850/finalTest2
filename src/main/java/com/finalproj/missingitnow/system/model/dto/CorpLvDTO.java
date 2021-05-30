package com.finalproj.missingitnow.system.model.dto;

public class CorpLvDTO {
	
	private String corpLvNo;
	private String corpLvName;
	
	public CorpLvDTO() {
		
	}
	public CorpLvDTO(String corpLvNo, String corpLvName) {
		super();
		this.corpLvNo = corpLvNo;
		this.corpLvName = corpLvName;
	}
	public String getCorpLvNo() {
		return corpLvNo;
	}
	public void setCorpLvNo(String corpLvNo) {
		this.corpLvNo = corpLvNo;
	}
	public String getCorpLvName() {
		return corpLvName;
	}
	public void setCorpLvName(String corpLvName) {
		this.corpLvName = corpLvName;
	}
	@Override
	public String toString() {
		return "CorpLvDTO [corpLvNo=" + corpLvNo + ", corpLvName=" + corpLvName + "]";
	}
	
	
	
	

}
