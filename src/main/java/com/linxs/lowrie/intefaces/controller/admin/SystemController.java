package com.linxs.lowrie.intefaces.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.linxs.lowrie.domain.user.User;

/**
 * 
 * @author Linxiaosheng
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class SystemController {
	
	@RequestMapping(value = "/system.do", method = RequestMethod.GET) 
	public String system() {
		return "admin/system/content";
	}
	
	@RequestMapping(value = "/security.do", method = RequestMethod.GET) 
	public String security(Model model, HttpServletRequest request) {
		model.addAttribute("user", (User)request.getSession().getAttribute("user")); 
		return "admin/system/security";
	}

}
