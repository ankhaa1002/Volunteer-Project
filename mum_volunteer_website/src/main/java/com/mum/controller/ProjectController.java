package com.mum.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mum.domain.Project;
import com.mum.domain.Skill;
import com.mum.domain.Task;
import com.mum.domain.enums.Status;
import com.mum.pojo.ProjectForm;
import com.mum.service.ProjectService;
import com.mum.service.SkillService;
import com.mum.service.TaskService;

import scala.annotation.meta.setter;

@Controller
public class ProjectController {

	@Autowired
	ProjectService service;

	@Autowired
	SkillService skillService;

	@Autowired
	TaskService taskService;

	@RequestMapping("/project")
	public String index(Model model) {
		model.addAttribute("title", "Project list");
		model.addAttribute("projects", service.findAllProjects());
		return "project";
	}

	@RequestMapping("/projectAdd")
	public String addProject(Model model) {
		ProjectForm project = new ProjectForm();
		List<Skill> skills = skillService.findAllSkills();
		project.setAllSkils(skillService.findAllSkills());
		model.addAttribute("title", "Add new Project");
		model.addAttribute("project", project);
		return "addProject";
	}

	@RequestMapping(value = "/projectDelete", method = RequestMethod.POST)
	public String removeProject(HttpServletRequest req, final RedirectAttributes redirectAttributes) {
		if (req.getParameterValues("projectId") == null)
			return "redirect:/project?delete=false";
		else {
			for (String projectId : req.getParameterValues("projectId")) {
				service.deletePizza(service.findProject(Integer.parseInt(projectId)));
			}

			redirectAttributes.addAttribute("successMsg", "Project has been successfully deleted");
			return "redirect:/project?delete=true";
		}
	}

	@RequestMapping(value = "/projectAdd", method = RequestMethod.POST)
	public String saveProject(@ModelAttribute("project") ProjectForm project, BindingResult result, Model model,
			HttpServletRequest req) {

		Project entity = new Project();
		entity.setDescription(project.getDescription());
		entity.setStartDate(project.getStartDate());
		entity.setEndDate(project.getEndDate());
		entity.setLocation(project.getLocation());
		entity.setTitle(project.getTitle());
		entity.setSkills(project.getSkills());
		entity.setStatus(Status.PENDING);

		if (req.getParameterValues("task_title") != null && req.getParameterValues("task_description") != null
				&& req.getParameterValues("task_start_date") != null
				&& req.getParameterValues("task_end_date") != null) {
			List<Task> tasks = new ArrayList<>();

			for (String title : req.getParameterValues("task_title")) {
				Task task = new Task();
				task.setTitle(title);
				tasks.add(task);
			}
			int counterDesc = 0;
			for (String description : req.getParameterValues("task_description")) {
				tasks.get(counterDesc).setDescription(description);
				counterDesc++;
			}

			int counterStart = 0;
			for (String startDate : req.getParameterValues("task_start_date")) {
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				Date date = null;
				try {
					date = df.parse(startDate);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				tasks.get(counterStart).setStart_date(date);
				counterStart++;
			}

			int counterEnd = 0;
			for (String endtDate : req.getParameterValues("task_end_date")) {
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				Date date = null;
				try {
					date = df.parse(endtDate);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				tasks.get(counterEnd).setEnd_date(date);
				counterEnd++;
			}

			Project p = service.saveProject(entity);

			for (Task task : tasks) {
				task.setProject(p);
				task.setStatus(Status.PENDING);
				taskService.saveTask(task);
			}

			model.addAttribute("msg", "Project has been successfully added!");

			return "redirect:/project?create=true";
		} else {
			service.saveProject(entity);
			model.addAttribute("msg", "Project has been successfully added!");

			return "redirect:/project?create=true";
		}
	}

	@RequestMapping(value = { "editProject-{id}" }, method = RequestMethod.GET)
	public String editProject(@PathVariable int id, Model model) {
		Project project = service.findProject(id);
		ProjectForm projectForm = new ProjectForm();
		projectForm.setId(project.getId());
		projectForm.setTitle(project.getTitle());
		projectForm.setDescription(project.getDescription());
		projectForm.setStartDate(project.getStartDate());
		projectForm.setLocation(project.getLocation());
		projectForm.setEndDate(project.getEndDate());
		projectForm.setSkills(project.getSkills());
		projectForm.setAllSkils(skillService.findAllSkills());
		projectForm.setTasks(project.getTasks());
		model.addAttribute("title", "Editing " + project.getTitle());
		model.addAttribute("project", projectForm);
		return "editProject";
	}

	@RequestMapping(value = { "editSave" }, method = RequestMethod.POST)
	public String editSave(@ModelAttribute("project") ProjectForm projectForm, BindingResult result, Model model,
			HttpServletRequest req) {
		Project project = service.findProject(projectForm.getId());
		project.setTitle(projectForm.getTitle());
		project.setDescription(projectForm.getDescription());
		project.setStartDate(projectForm.getStartDate());
		project.setLocation(projectForm.getLocation());
		project.setEndDate(projectForm.getEndDate());
		project.setSkills(projectForm.getSkills());

		if (req.getParameterValues("task_title") != null && req.getParameterValues("task_description") != null
				&& req.getParameterValues("task_start_date") != null
				&& req.getParameterValues("task_end_date") != null) {
			List<Task> tasks = new ArrayList<>();

			for (String title : req.getParameterValues("task_title")) {
				Task task = new Task();
				task.setTitle(title);
				tasks.add(task);
			}
			int counterDesc = 0;
			for (String description : req.getParameterValues("task_description")) {
				tasks.get(counterDesc).setDescription(description);
				counterDesc++;
			}

			int counterStart = 0;
			for (String startDate : req.getParameterValues("task_start_date")) {
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				Date date = null;
				try {
					date = df.parse(startDate);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				tasks.get(counterStart).setStart_date(date);
				counterStart++;
			}

			int counterEnd = 0;
			for (String endtDate : req.getParameterValues("task_end_date")) {
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				Date date = null;
				try {
					date = df.parse(endtDate);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				tasks.get(counterEnd).setEnd_date(date);
				counterEnd++;
			}
			
			List<Task> temps = taskService.findByProject(project);
			for(Task task : temps)
				taskService.deletePizza(task);
			
			Project p = service.saveProject(project);
			
			for (Task task : tasks) {
				task.setProject(p);
				task.setStatus(Status.PENDING);
				taskService.saveTask(task);
			}

			return "redirect:/project?update=true";
		} else {
			List<Task> tasks = taskService.findByProject(project);
			if(tasks.size() != 0)
				for(Task task : tasks)
					taskService.deletePizza(task);
			
			service.saveProject(project);
			return "redirect:/project?update=true";
		}
	}
}
