package com.linxs.lowrie.intefaces.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.linxs.lowrie.application.channel.ChannelService;
import com.linxs.lowrie.application.company.CompanyService;
import com.linxs.lowrie.application.resources.ResourcesService;

/**
 * 
 * @author Linxs
 *
 */
@Controller
public class AboutUsController {

	@Autowired
	private CompanyService companyService;
	@Autowired
	private ChannelService channelService;
	@Autowired
	private ResourcesService resourcesService;
	
	@RequestMapping(value = "/aboutus.do", method = RequestMethod.GET)
	public String aboutUs(Model model) {
		model.addAttribute("company", companyService.getCompany());
		model.addAttribute("channelTop", channelService.queryTop());
		model.addAttribute("logo", resourcesService.getLogo());
		return "aboutus";
	}
	
}
