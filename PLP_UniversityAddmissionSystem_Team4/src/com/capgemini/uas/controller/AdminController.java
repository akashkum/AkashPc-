package com.capgemini.uas.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.capgemini.uas.dto.ProgramScheduledBean;
import com.capgemini.uas.exception.UniversityException;
import com.capgemini.uas.service.IAdminService;

@Controller
public class AdminController {
	
	@Resource
	IAdminService service;
	
	@RequestMapping()
	public ModelAndView getAdminHomePage(){
		ModelAndView mAndV = new ModelAndView();
		
		mAndV.setViewName("Admin_Home");
		return mAndV;
	}
	@RequestMapping("/AdminSheduledProgramlist.do")
	public ModelAndView getApplicantList() throws UniversityException{
		ModelAndView mAndV = new ModelAndView();
		List<ProgramScheduledBean> scheduleList =service.getAllDetails();
		mAndV.addObject("scheduleList", scheduleList);
		mAndV.addObject("flag", 1);
		System.out.println(scheduleList);
		mAndV.setViewName("Admin_Home");
		System.out.println("You here");
		return mAndV;
	}
	
}
