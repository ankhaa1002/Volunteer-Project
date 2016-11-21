package com.mum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mum.pojo.ProjectForm;
import com.mum.pojo.VolunteerForm;
import com.mum.service.SkillService;
import com.mum.service.VolunteerService;

@Controller
public class VolunteerController {
	
	@Autowired
	VolunteerService service;
	
	@Autowired
	SkillService skillService;
	
	@RequestMapping("/volunteer")
    public String listVolunteer(Model model) {
		model.addAttribute("title", "Volunteer list");
		model.addAttribute("volunteers", service.findAllVolunteers());
		return "volunteer";
    }
	
	@RequestMapping("/addVolunteer")
    public String addVolunteer(Model model) {
		VolunteerForm volunteer = new VolunteerForm();
		model.addAttribute("title","Add new Volunteer");
		model.addAttribute("volunteer",volunteer);
		model.addAttribute("skills",skillService.findAllSkills());
		return "addVolunteer";
    }
	
	@RequestMapping(value="/saveVolunteer", method = RequestMethod.POST)
	public String saveVolunteer(@ModelAttribute("volunteer") VolunteerForm volunteer,
			BindingResult result, Model model){
		//service.saveVolunteer(volunteer);
		return "redirect:volunteer";
	}
	}

