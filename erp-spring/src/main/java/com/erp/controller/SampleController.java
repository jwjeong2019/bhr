package com.erp.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.erp.service.SampleService;
import com.erp.vo.SampleVO;

@Controller
public class SampleController {
	
	private static final Logger logger = LogManager.getLogger(SampleController.class);
	
	@Inject
	private SampleService service;
	
	@GetMapping("/sample")
	public String sample(Model model) throws Exception {
		
		logger.info("hello SampleController.");
		logger.warn("hello SampleController.");
		logger.debug("hello SampleController.");
		
		List<SampleVO> sampleList = service.getSampleList();
		
		model.addAttribute("sampleList", sampleList);
		
		return "sample";
	}

}
