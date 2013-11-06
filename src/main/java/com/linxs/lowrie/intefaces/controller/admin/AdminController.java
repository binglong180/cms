package com.linxs.lowrie.intefaces.controller.admin;

import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author Linxs
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {

	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String admin(Model model) {
		Properties props = System.getProperties();
		model.addAttribute("props", props);
		return "admin/index";
	}
	
	@RequestMapping(value = "/sign-out.do", method = RequestMethod.GET)
	public String signOut(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/login.do";
	}
	
	@RequestMapping(value = "/system-info.do", method = RequestMethod.GET)
	public String systemInfo(Model model) {
		Properties props = System.getProperties();
		model.addAttribute("props", props);
		return "admin/systemInfo";
	}

}
