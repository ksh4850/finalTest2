package com.finalproj.missingitnow.communty.model.dao;

import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;

public interface CommuntyMapper {


	int insertCommuntyRegist(SPostDTO post);

	int insertPostImg(SPostImgDTO img);

}
