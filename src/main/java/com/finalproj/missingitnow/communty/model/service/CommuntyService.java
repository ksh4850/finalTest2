package com.finalproj.missingitnow.communty.model.service;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostListDTO;

public interface CommuntyService {


	int insertCommuntyRegist(SPostDTO post, List<SPostImgDTO> imgList);

	List<SPostListDTO> selectPostList();

	List<SPostListDTO> selectAajxPostList(Map<String, Integer> map);
	
	


}
