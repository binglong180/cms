package com.linxs.lowrie.intefaces.controller.admin;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.linxs.lowrie.application.company.CompanyService;
import com.linxs.lowrie.application.resources.ResourcesService;
import com.linxs.lowrie.domain.company.Company;

/**
 * 
 * @author Linxs
 * 
 */
@Controller
@RequestMapping(value = "/admin")
public class SiteController {

	@Autowired
	private CompanyService companyService;
	@Autowired
	private ResourcesService resourcesService;

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
	public String contact(Model model) {
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

	@RequestMapping(value = "/resources.do", method = RequestMethod.GET)
	public String resource(Model model) {
		model.addAttribute("logo", resourcesService.getLogo());
		model.addAttribute("focusPictures", resourcesService.queryFocusPictures());
		return "admin/site/resources";
	}

	@RequestMapping(value = "upload-logo.do", method = RequestMethod.POST)
	@ResponseBody
	public String uploadLogo(MultipartHttpServletRequest request) throws IOException {
		upload(request, "logo", "logo.png"); 
		return "success";
	}
	
	@RequestMapping(value = "upload-banner.do", method = RequestMethod.POST)
	@ResponseBody
	public String uploadBanner(MultipartHttpServletRequest request) throws IOException {
		upload(request, request.getParameter("requestName"), request.getParameter("fileName")); 
		return "success";
	}

	@SuppressWarnings("deprecation")
	private void upload(MultipartHttpServletRequest request, String requestName, String fileName) throws IOException {
		
		MultipartFile file = request.getFile(requestName);
		
		String ctxPath = request.getRealPath("/").concat("/upload-photo/resources/");
		
		File dirPath = new File(ctxPath); 
		if (!dirPath.exists()) {
			dirPath.mkdir();
		}
		File uploadFile = new File(ctxPath + fileName);
		FileCopyUtils.copy(file.getBytes(), uploadFile);
	}

}
