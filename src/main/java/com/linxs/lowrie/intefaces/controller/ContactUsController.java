package com.linxs.lowrie.intefaces.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.linxs.lowrie.application.company.CompanyService;

/**
 * 
 * @author Linxiaosheng
 *
 */
@Controller
public class ContactUsController {

	@Autowired
	private CompanyService companyService;
	
	@RequestMapping(value = "/contactus.do", method = RequestMethod.GET)
	public String contactUs(Model model) {
		model.addAttribute("company", companyService.getCompany());
		return "contactus";
	}
	
}
