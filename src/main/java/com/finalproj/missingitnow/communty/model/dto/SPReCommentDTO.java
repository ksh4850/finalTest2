package com.finalproj.missingitnow.communty.model.dto;

import java.sql.Timestamp;

import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;

public class SPReCommentDTO {
	
	private String reComtNo;
	private PrivateMemberDTO user;
	private SPCommentDTO comment;
	private String reComtDetail;
	private java.sql.Timestamp reComtDate;
	private String reComtStatus;
	
	public SPReCommentDTO(String reComtNo, PrivateMemberDTO user, SPCommentDTO comment, String reComtDetail,
			Timestamp reComtDate, String reComtStatus) {
		super();
		this.reComtNo = reComtNo;
		this.user = user;
		this.comment = comment;
		this.reComtDetail = reComtDetail;
		this.reComtDate = reComtDate;
		this.reComtStatus = reComtStatus;
	}

	@Override
	public String toString() {
		return "SPReCommentDTO [reComtNo=" + reComtNo + ", user=" + user + ", comment=" + comment + ", reComtDetail="
				+ reComtDetail + ", reComtDate=" + reComtDate + ", reComtStatus=" + reComtStatus + "]";
	}
	
	
	
	

}
