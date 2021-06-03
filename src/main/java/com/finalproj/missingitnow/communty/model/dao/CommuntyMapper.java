package com.finalproj.missingitnow.communty.model.dao;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;

public interface CommuntyMapper {

	/* int insertIngUpload(Map<String, Object> map); */

	int insertCommuntyRegist(SPostDTO post);

	int insertPostImg(List<SPostImgDTO> imgList);

}
