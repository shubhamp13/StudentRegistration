package com.springmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.springmvc.dto.Student;
import com.springmvc.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService service;

	@RequestMapping("/")
	public String index() {
		return "home";
	}

	@RequestMapping("/home")
	public String homePage() {
		return "home";
	}

	@RequestMapping("/navbar")
	public String navbar(Model model) {
		return "navbar";
	}

	@RequestMapping("/form")
	public String form(Model model) {
		model.addAttribute("name", "Shubham Pandit Puri");
		return "form";
	}

	@RequestMapping("/courses")
	public ModelAndView coursesPage() {
		System.out.println("modelAndView");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("courses");
		return modelAndView;
	}

	@RequestMapping(path = "/processForm", method = RequestMethod.POST)
	public RedirectView handleForm(@ModelAttribute Student student, Model model) {
		RedirectView redirectView = new RedirectView();
		int id = service.createStudent(student);
		redirectView.setUrl("sucess");
		return redirectView;
	}

	@RequestMapping("/sucess")
	public String successView() {
		return "sucess";
	}
}
