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
	public int insertCommuntyRegist(SPostDTO post, List<SPostImgDTO> imgList) {
		
		int result = 0;
		
		int postResult = communtyMapper.insertCommuntyRegist(post);
		
		int imgResult = 0;
		
		for(int i = 0 ; i < imgList.size() ; i++) {
			imgResult += communtyMapper.insertPostImg(imgList.get(i));
		}
		
		if(postResult > 0 && imgResult == imgList.size()) {
			result = 1;
		}
		
		
		return result;
	}

	

}
