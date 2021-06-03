package com.finalproj.missingitnow.communty.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;
import com.finalproj.missingitnow.communty.model.service.CommuntyService;
import com.finalproj.missingitnow.system.model.dto.UserDTO;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/communty/*")
public class CommuntyController {
	
	private final CommuntyService communtyService;
	
	@Autowired
	public CommuntyController(CommuntyService communtyService) {
		this.communtyService = communtyService;
	}
	
	
	@GetMapping("communtyRegist")
	public String getCommuntyRegist() {
		return "communty/communtyRegist";
	}
	
	@PostMapping("communtyRegist")
	public void postCommuntyRegist(@ModelAttribute SPostDTO post  ,Model model ,@RequestParam String reName  , @RequestParam String originName ,HttpServletRequest request) {
		
		System.out.println(post.getHousingType());
		System.out.println(post.getAcreage());
		System.out.println(post.getResidenceType());
		System.out.println(post.getCost());
		System.out.println(post.getPostDetail());
		System.out.println(reName);
		System.out.println(originName);
		
		String[] reNames= reName.split(",");
		String[] originNames= originName.split(",");
		
		String filePath = request.getSession().getServletContext().getRealPath("resources") + "\\uploadFiles";
		
		List<SPostImgDTO> imgList =  new ArrayList<>();
		
		for(int i = 0 ; i < reNames.length ; i++) {
			SPostImgDTO img = new SPostImgDTO();
			img.setOriginName(originNames[i]);
			img.setReName(reNames[i]);
			img.setPath(filePath);
			img.setThnbName("추가예정");
			
			imgList.add(img);
			
		}
		
		
		//세션 불러와서 넣기 일단은 임의의 값으로 처리
		
		post.setUser(new UserDTO());
		post.getUser().setUserNo("USER0001");
		
		
		post.setPostDate(new java.sql.Timestamp(System.currentTimeMillis()));
		
		int postResult = 0;
		int imgResult = 0;
		
		postResult = communtyService.insertCommuntyRegist(post);
		
		if(postResult > 0) {
			 imgResult = communtyService.insertPostImg(imgList); 
		}
		
		
		model.addAttribute("post",post);
		
		
		
//		return "communty/test";
		
	}
	
	
	@PostMapping(value="imgUpload" , produces ="application/json; charset=UTF-8")
	@ResponseBody
	public String uploadFiles(List<MultipartFile> uploadFiles ,HttpServletRequest request) throws IOException {
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
//		System.out.println(root);
		
		String filePath = root + "\\uploadFiles";
		
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		List<Map<String, String>> files = new ArrayList<>();
		for(int i = 0 ; i < uploadFiles.size() ; i++) {
			
			String originFileName = uploadFiles.get(i).getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String reName = UUID.randomUUID().toString().replace("-", "") + ext;
			
			
			Map<String, String> file = new HashMap<>();
			file.put("originFileName", originFileName);
			file.put("reName", reName);
			file.put("filePath", filePath);
			
			files.add(file);
		}
		
		
		
		
		try {
			for(int i = 0 ; i < uploadFiles.size() ; i++) {
				Map<String, String> file = files.get(i);

				uploadFiles.get(i).transferTo(new File(filePath + "\\" + file.get("reName")));
			}
			
			
			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			
			
			for(int i = 0 ; i < uploadFiles.size(); i++) {
				Map<String, String> file = files.get(i);
				
				new File(filePath + "\\" + file.get("reName")).delete();
			
			}
		}
		
		 
		String  gson = new GsonBuilder().create().toJson(files);
		
//		System.out.println(gson);
		
		return gson;

	}
	
	
	@GetMapping(value="ajaxDelete" , produces ="text/plain; charset=UTF-8")
	@ResponseBody
	public String getAjaxImgDelete(@RequestParam String reName , HttpServletRequest request ) {
		
		
		
		
		
		String deleteName = reName.substring(reName.lastIndexOf("/"));
		
//		System.out.println(reName);
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles";
		
//		System.out.println(filePath);
		
		new File(filePath + "\\" + deleteName).delete();
		
		return "삭제완료";
	}
	
	
	
	
	

}
