package com.finalproj.missingitnow.communty.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.communty.model.dao.CommuntyMapper;
import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;

@Service
public class CommuntyServiceImpl implements CommuntyService{
	
	private final CommuntyMapper communtyMapper;
	
	@Autowired
	public CommuntyServiceImpl(CommuntyMapper communtyMapper) {
		this.communtyMapper = communtyMapper;
	}

	/*
	 * @Override public int insertIngUpload(List<Map<String, String>> files) {
	 * 
	 * Map<String,Object> map = new HashMap<>();
	 * 
	 * map.put("files", files);
	 * 
	 * return communtyMapper.insertIngUpload(map); }
	 */

	@Override
	public int insertCommuntyRegist(SPostDTO post) {
		return communtyMapper.insertCommuntyRegist(post);
	}

	@Override
	public int insertPostImg(List<SPostImgDTO> imgList) {
		return communtyMapper.insertPostImg(imgList);
	}

	

}
