package com.linxs.lowrie.intefaces.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author Linxs
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class ContentController {
	
	@RequestMapping(value = "/content.do", method = RequestMethod.GET)
	public String content() {
		return "admin/content/list";
	}
	
}
