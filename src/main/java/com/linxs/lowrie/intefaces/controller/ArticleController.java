package com.linxs.lowrie.intefaces.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.linxs.lowrie.application.blog.BlogService;
import com.linxs.lowrie.application.channel.ChannelService;
import com.linxs.lowrie.application.resources.ResourcesService;
import com.linxs.lowrie.domain.blog.Blog;

/**
 * 
 * @author Linxs
 *
 */
@Controller
public class ArticleController {

	@Autowired
	private BlogService blogService;
	@Autowired
	private ChannelService channelService;
	@Autowired
	private ResourcesService resourcesService;
	
	@RequestMapping(value = "/article/{id}", method = RequestMethod.GET)
	public String article(Model model, @PathVariable("id")String id) {
		Blog blog = blogService.get(id);
		model.addAttribute("blog", blog);
		model.addAttribute("channelTop", channelService.queryTop());
		model.addAttribute("logo", resourcesService.getLogo());
		return "article";
	}
	
	@RequestMapping(value = "/comment") 
	public String comment(Model model) {
		model.addAttribute("channelTop", channelService.queryTop());
		model.addAttribute("logo", resourcesService.getLogo());
		return "comment";
	}
	
}
