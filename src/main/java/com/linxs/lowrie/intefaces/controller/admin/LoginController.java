package com.linxs.lowrie.intefaces.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
 * @author Linxs
 * 
 */
@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("user", new User());
		return "/admin/login";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	@ResponseBody
	public String login(Model model, User user, HttpServletRequest request, HttpServletResponse response) {
		
		User loginUser = login(user, request, response);
		if (loginUser != null) {
			request.getSession().setAttribute("user", loginUser);
			return "success";
		}
		
		return "fail";
	}

	private User login(User loginUser, HttpServletRequest request, HttpServletResponse response) {
		loginUser.setPassword(new MD5Utils().generateMD5(loginUser.getPassword()));
		User user = userService.getByUsername(loginUser.getUsername());
		if (null != user) {
			if (!new MD5Utils().generateMD5(user.getPassword()).equals(new MD5Utils().generateMD5(loginUser.getPassword()))) {
				return null;
			}
			return user;
		}
		return null;
	}

}
