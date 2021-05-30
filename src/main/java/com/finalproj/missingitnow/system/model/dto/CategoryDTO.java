package com.finalproj.missingitnow.system.model.dto;

public class CategoryDTO {
	
	private String prodCtgNo;
	private String prodCtgName;
	
	public CategoryDTO() {
		
	}
	
	public CategoryDTO(String prodCtgNo, String prodCtgName) {
		super();
		this.prodCtgNo = prodCtgNo;
		this.prodCtgName = prodCtgName;
	}
	public String getProdCtgNo() {
		return prodCtgNo;
	}
	public void setProdCtgNo(String prodCtgNo) {
		this.prodCtgNo = prodCtgNo;
	}
	public String getProdCtgName() {
		return prodCtgName;
	}
	public void setProdCtgName(String prodCtgName) {
		this.prodCtgName = prodCtgName;
	}
	@Override
	public String toString() {
		return "CategoryDTO [prodCtgNo=" + prodCtgNo + ", prodCtgName=" + prodCtgName + "]";
	}
	
	

}
