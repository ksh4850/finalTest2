package com.finalproj.missingitnow.member.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/registBranch")
public class RegistBranchController {

	@GetMapping
	public String registBranch() {
		
		return "member/registBranch";
	}
	
}
