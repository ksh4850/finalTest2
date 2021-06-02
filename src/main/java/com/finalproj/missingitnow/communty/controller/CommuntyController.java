package com.finalproj.missingitnow.communty.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/communty/*")
public class CommuntyController {
	
	@GetMapping("communtyRegist")
	public String getCommuntyRegist() {
		return "communty/communtyRegist";
	}
	
	@PostMapping("communtyRegist")
	public String postCommuntyRegist(@ModelAttribute SPostDTO postDTO ,Model model) {
		
		System.out.println(postDTO.getHousingType());
		System.out.println(postDTO.getAcreage());
		System.out.println(postDTO.getResidenceType());
		System.out.println(postDTO.getCost());
		System.out.println(postDTO.getPostDetail());
		
		
		model.addAttribute("postDTO",postDTO);
		
		
		
		
		return "communty/test";
		
	}
	
	
	@PostMapping(value="imgUpload" , produces ="application/json; charset=UTF-8")
	@ResponseBody
	public String uploadFiles(List<MultipartFile> uploadFiles ,HttpServletRequest request) throws IOException {
		System.out.println("컨트롤러");
		
		
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
			String saveName = UUID.randomUUID().toString().replace("-", "") + ext;
			
			
			Map<String, String> file = new HashMap<>();
			file.put("originFileName", originFileName);
			file.put("saveName", saveName);
			file.put("filePath", filePath);
			
			files.add(file);
		}
		
		
		try {
			for(int i = 0 ; i < uploadFiles.size() ; i++) {
				Map<String, String> file = files.get(i);

				uploadFiles.get(i).transferTo(new File(filePath + "\\" + file.get("saveName")));
			}
			
			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			
			
			for(int i = 0 ; i < uploadFiles.size(); i++) {
				Map<String, String> file = files.get(i);
				
				new File(filePath + "\\" + file.get("saveName")).delete();
			}
			
			
		}
		
		
		String gson = new GsonBuilder().create().toJson(files);
		
//		System.out.println(gson);
		
		
		
		return gson;

	}
	
	
	@GetMapping(value="ajaxDelete" , produces ="text/plain; charset=UTF-8")
	@ResponseBody
	public String getAjaxImgDelete(@RequestParam String saveName , HttpServletRequest request) {
		
		
		
		
		
		String reName = saveName.substring(saveName.lastIndexOf("/"));
		
//		System.out.println(reName);
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles";
		
//		System.out.println(filePath);
		
		new File(filePath + "\\" + reName).delete();
		
		return "삭제완료";
	}
	
	
	
	
	

}
