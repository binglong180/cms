package com.linxs.lowrie.intefaces.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.linxs.lowrie.application.company.CompanyService;
import com.linxs.lowrie.domain.company.Company;

/**
 * 
 * @author Linxiaosheng
 *
 */
@Controller
@RequestMapping(value = "/admin") 
public class SiteController {
	
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping(value = "/site.do", method = RequestMethod.GET)
	public String site() {
		return "admin/site/content";
	}
	
	@RequestMapping(value = "/about.do", method = RequestMethod.GET) 
	public String about(Model model) {
		model.addAttribute("company", companyService.getCompany());
		return "admin/site/about";
	}
	
	@RequestMapping(value = "/about.do", method = RequestMethod.POST)
	@ResponseBody
	public String about(Company companyData) {
		Company company = companyService.getCompany();
		
		company.setCompanyName(companyData.getCompanyName());
		company.setCompanyIntro(companyData.getCompanyIntro());
		
		companyService.update(company);
		return "success";
	}
	
	@RequestMapping(value = "/contact.do", method = RequestMethod.GET) 
	public String contact(Model model)	{
		model.addAttribute("company", companyService.getCompany());
		return "admin/site/contact";
	}
	
	@RequestMapping(value = "/contact.do", method = RequestMethod.POST) 
	@ResponseBody
	public String contact(Company companyData) {
		Company company = companyService.getCompany();
		
		company.setCompanyAddress(companyData.getCompanyAddress());
		company.setCompanyEmail(companyData.getCompanyEmail());
		company.setCompanyFax(companyData.getCompanyFax());
		company.setCompanyTelephone(companyData.getCompanyTelephone());
		
		companyService.update(company);
		
		return "success";
	}

}
