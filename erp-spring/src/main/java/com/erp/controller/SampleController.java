package com.erp.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.erp.service.SampleService;
import com.erp.vo.SampleVO;

@Controller
public class SampleController {
	
	@Inject
	private SampleService service;
	
	@GetMapping("/sample")
	public String sample(Model model) throws Exception {
		
		List<SampleVO> sampleList = service.getSampleList();
		
		model.addAttribute("sampleList", sampleList);
		
		return "sample";
	}

}
