package com.finalproj.missingitnow.communty.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.communty.model.dao.CommuntyMapper;

@Service
public class CommuntyServiceImpl implements CommuntyService{
	
	private final CommuntyMapper communtyMapper;
	
	@Autowired
	public CommuntyServiceImpl(CommuntyMapper communtyMapper) {
		this.communtyMapper = communtyMapper;
	}

}
