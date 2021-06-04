package com.finalproj.missingitnow.communty.model.dao;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostListDTO;

public interface CommuntyMapper {


	int insertCommuntyRegist(SPostDTO post);

	int insertPostImg(SPostImgDTO img);

	List<SPostListDTO> selectPostList();

	List<SPostListDTO> selectAajxPostList(Map<String, Integer> map);

}
