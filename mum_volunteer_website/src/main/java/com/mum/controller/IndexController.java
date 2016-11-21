package com.mum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mum.service.ProjectService;
import com.mum.service.TaskService;
import com.mum.service.VolunteerService;

@Controller
public class IndexController {

	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private TaskService taskService;
	
	@Autowired
	private VolunteerService volunteerService;
	
	@RequestMapping("/home")
    public String showHome(Model model) {
		model.addAttribute("title","User dashboard");
		model.addAttribute("projectCount", projectService.findAllProjects().size());
		model.addAttribute("taskCount", taskService.findAllPizzas().size());
		model.addAttribute("volunteerCount", volunteerService.findAllVolunteers().size());
		return "index";
    }
	
	@RequestMapping("/profile")
    public String showProfile(Model model) {
		model.addAttribute("title","My profile");
		return "profile";
    }
	
}
