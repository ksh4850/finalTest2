package com.finalproj.missingitnow.system.model.dto;

import java.sql.Date;

public class DepositDTO {
	
	
	private String depositNo;
	private CorpDTO corp;
	private String depositSort;
	private int amount;
	private java.sql.Date depositDate;
	private String depositDetails;
	
	public DepositDTO() {
		
	}
	
	public DepositDTO(String depositNo, CorpDTO corp, String depositSort, int amount, Date depositDate,
			String depositDetails) {
		super();
		this.depositNo = depositNo;
		this.corp = corp;
		this.depositSort = depositSort;
		this.amount = amount;
		this.depositDate = depositDate;
		this.depositDetails = depositDetails;
	}
	public String getDepositNo() {
		return depositNo;
	}
	public void setDepositNo(String depositNo) {
		this.depositNo = depositNo;
	}
	public CorpDTO getCorp() {
		return corp;
	}
	public void setCorp(CorpDTO corp) {
		this.corp = corp;
	}
	public String getDepositSort() {
		return depositSort;
	}
	public void setDepositSort(String depositSort) {
		this.depositSort = depositSort;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public java.sql.Date getDepositDate() {
		return depositDate;
	}
	public void setDepositDate(java.sql.Date depositDate) {
		this.depositDate = depositDate;
	}
	public String getDepositDetails() {
		return depositDetails;
	}
	public void setDepositDetails(String depositDetails) {
		this.depositDetails = depositDetails;
	}
	@Override
	public String toString() {
		return "DepositDTO [depositNo=" + depositNo + ", corp=" + corp + ", depositSort=" + depositSort + ", amount="
				+ amount + ", depositDate=" + depositDate + ", depositDetails=" + depositDetails + "]";
	}
	
	
	
	
	
	
	

}
