package com.linxs.lowrie.intefaces.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.application.news.NewsService;
import com.linxs.lowrie.domain.news.News;

/**
 * 
 * @author Linxiaosheng
 *
 */
@Controller
public class NewssController {

	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value = "/news.do", method = RequestMethod.GET)
	public String news(Model model) {
		Page<News> page = new Page<News>().setPageNo(1).setPageSize(10);
		page = newsService.queryPage(page);
		model.addAttribute("page", page);
		return "news";
	}
	
	@RequestMapping(value = "/news-content.do", method = RequestMethod.GET)
	public String news(Model model, @RequestParam("id")int id) {
		News news = newsService.get(id);
		model.addAttribute("news", news);
		return "newsContent";
	}
	
}
