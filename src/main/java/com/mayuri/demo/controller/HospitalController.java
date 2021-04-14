package com.mayuri.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.mayuri.demo.model.Hospital;

import com.mayuri.demo.service.HospitalService;

@Controller
public class HospitalController {
	
	@Autowired
	private HospitalService hospitalService;
	
	@RequestMapping("/")
	public String viewHomePage(Model model) {
		List<Hospital> list=hospitalService.list();
		model.addAttribute("list",list);
		return "homepage";
	}
	
	@RequestMapping("/new")
	public String showNewForm(Model model)
	{
		Hospital hospital=new Hospital();
		model.addAttribute("hospital", hospital);
		return "new_form";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST) 
		
	public String save(@ModelAttribute("hospital") Hospital hospital )
	{
		hospitalService.save(hospital);
		return "redirect:/";
	}

	@RequestMapping("/hospital/{id}") 
	public ModelAndView get(@PathVariable("id") int id)
	{
		ModelAndView mav = new ModelAndView("new_form");
		Hospital hospital = hospitalService.get(id); 
		mav.addObject("hospital",hospital);
		return mav; 
	}
		 			
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id") int id)
	{
		hospitalService.delete(id);
		return "redirect:/";
	}	
}
