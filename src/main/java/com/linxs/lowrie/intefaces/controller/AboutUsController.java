package com.linxs.lowrie.intefaces.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.linxs.lowrie.application.company.CompanyService;

/**
 * 
 * @author Linxs
 *
 */
@Controller
public class AboutUsController {

	@Autowired
	private CompanyService companyService;
	
	@RequestMapping(value = "/aboutus.do", method = RequestMethod.GET)
	public String aboutUs(Model model) {
		model.addAttribute("company", companyService.getCompany());
		return "aboutus";
	}
	
}
