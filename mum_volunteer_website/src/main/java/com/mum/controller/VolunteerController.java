package com.mum.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.mum.domain.Volunteer;
import com.mum.pojo.VolunteerForm;
import com.mum.service.SkillService;
import com.mum.service.VolunteerService;

@Controller
public class VolunteerController {

	@Autowired
	VolunteerService service;

	@Autowired
	SkillService skillService;
   
	@RequestMapping("/login")
	public String logIn(Model model) {
		model.addAttribute("tittle", "Login");
		return "login";
	}
	
	
	
	@RequestMapping("/volunteer")
	public String listVolunteer(Model model) {
		model.addAttribute("title", "Volunteer list");
		model.addAttribute("volunteers", service.findAllVolunteers());
		return "volunteer";
	}

	@RequestMapping("/volunteerAdd")
	public String addVolunteer(Model model) {
		VolunteerForm volunteer = new VolunteerForm();
		model.addAttribute("skills", skillService.findAllSkills());
		model.addAttribute("title", "Add new Volunteer");
		model.addAttribute("volunteer", volunteer);
		return "addVolunteer";
	}
	
	@RequestMapping(value = "/saveVolunteer", method = RequestMethod.POST)
	public String saveVolunteer(@ModelAttribute("volunteer") VolunteerForm volunteer, BindingResult result,
			Model model) {
		Volunteer entity = new Volunteer();
		entity.setFirstName(volunteer.getFirstName());
		entity.setMiddleName(volunteer.getMiddleName());
		entity.setLastName(volunteer.getLastName());
		entity.setTelNumber(volunteer.getTelNumber());
		entity.setDOB(volunteer.getDOB());
		entity.setEmail(volunteer.getEmail());

		service.saveVolunteer(entity);
		model.addAttribute("msg", "Volunteer has been successfully added!");

		return "redirect:/volunteer?create=true";
	}

	@RequestMapping(value = { "editVolunteer-{id}" }, method = RequestMethod.GET)
	public String editVolunteer(@PathVariable int id, Model model) {
		Volunteer volunteer = service.getVolunteer(id);
		VolunteerForm volunteerForm = new VolunteerForm();
		volunteerForm.setId(volunteer.getUserId());
		volunteerForm.setFirstName(volunteer.getFirstName());
		volunteerForm.setMiddleName(volunteer.getMiddleName());
		volunteerForm.setLastName(volunteer.getLastName());
		volunteerForm.setDOB(volunteer.getDOB());
		volunteerForm.setTelNumber(volunteer.getTelNumber());
		volunteerForm.setEmail(volunteer.getEmail());
		volunteerForm.setSkills(skillService.findAllSkills());
		model.addAttribute("title", "Editing " + volunteer.getFirstName());
		model.addAttribute("volunteer", volunteerForm);
		return "editVolunteer";
	}

	@RequestMapping(value = { "editSaveVolunteer" }, method = RequestMethod.POST)
	public String editSave(@ModelAttribute("volunteer") VolunteerForm volunteerForm, BindingResult result, Model model,
			HttpServletRequest req) {
		Volunteer volunteer = service.getVolunteer(volunteerForm.getId());
		volunteer.setFirstName(volunteerForm.getFirstName());
		volunteer.setMiddleName(volunteerForm.getMiddleName());
		volunteer.setLastName(volunteerForm.getLastName());
		volunteer.setDOB(volunteerForm.getDOB());
		volunteer.setTelNumber(volunteerForm.getTelNumber());
		volunteer.setEmail(volunteerForm.getEmail());
		service.saveVolunteer(volunteer);
		return "redirect:/volunteer?update=true";
	}

	 @RequestMapping(value = "/volunteerDelete", method = RequestMethod.POST)
	 public String deleteVolunteer(HttpServletRequest req, final
	 RedirectAttributes redirectAttributes) {
	 if (req.getParameterValues("volunteerId") == null)
	 return "redirect:/volunteer?delete=false";
	 else {
	 for (String volunteerId : req.getParameterValues("volunteerId")) {
	 service.deleteVolunteer(service.getVolunteer(Integer.parseInt(volunteerId)));
	 }
	
	 redirectAttributes.addAttribute("successMsg", "Voluntteer has been successfully deleted");
	 
	 return "redirect:/volunteer?delete=true";
	 }
	 }
}
	
