package com.linxs.lowrie.intefaces.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.linxs.lowrie.application.user.UserService;
import com.linxs.lowrie.domain.user.User;
import com.linxs.lowrie.intefaces.utils.MD5Utils;

/**
 * 
 * @author Linxiaosheng
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class SystemController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/system.do", method = RequestMethod.GET) 
	public String system() {
		return "admin/system/content";
	}
	
	@RequestMapping(value = "/security.do", method = RequestMethod.GET) 
	public String security(Model model, HttpServletRequest request) {
		model.addAttribute("user", (User)request.getSession().getAttribute("user")); 
		return "admin/system/security";
	}
	
	@RequestMapping(value = "/security-reset.do", method = RequestMethod.POST) 
	@ResponseBody
	public String resetPassword(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		String newPassword = new MD5Utils().generateMD5(request.getParameter("password"));
		user.setPassword(newPassword);
		userService.update(user);
		return "success";
	}

}
