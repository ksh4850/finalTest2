package com.finalproj.missingitnow.communty.model.service;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;

public interface CommuntyService {


	int insertCommuntyRegist(SPostDTO post);

	int insertPostImg(List<SPostImgDTO> imgList);

}
