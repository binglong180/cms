package com.linxs.lowrie.intefaces.controller.admin;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.application.news.NewsService;
import com.linxs.lowrie.domain.news.News;

/**
 * 
 * @author Linxiaosheng
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class NewsController {
	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value = "/news.do", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request) {
		Page<News> page = new Page<News>();
		int pageNo = WebUtils.getCleanParam(request, "pageNo") == null ? 0 : Integer.valueOf(WebUtils.getCleanParam(request, "pageNo"));
		page = newsService.queryPage(page.setPageNo(pageNo).setPageSize(10));
		model.addAttribute("page", page); 
		return "/admin/news/list";
	}
	
	@RequestMapping(value = "/news-create.do", method = RequestMethod.GET)
	public String form(Model model) {
		model.addAttribute("news", new News());
		return "/admin/news/form";
	}
	
	@RequestMapping(value = "/news-create.do", method = RequestMethod.POST)
	@ResponseBody
	public String form(Model model, News news) {
		news.setTime(new Date());
		newsService.save(news);
		return "success";
	}
	
	@RequestMapping(value = "/news-edit.do", method = RequestMethod.GET) 
	public String update(Model model, @RequestParam("id")int id) {
		News news = newsService.get(id);
		model.addAttribute("news", news);
		return "/admin/news/form";
	}
	
	@RequestMapping(value = "/news-edit.do", method = RequestMethod.POST)
	@ResponseBody
	public String update(News news) {
		newsService.update(news);
		return "success";
	}
	
	@RequestMapping(value = "/news-remove.do", method = RequestMethod.POST)
	@ResponseBody
	public String remove(@RequestParam("id")int id) {
		newsService.delete(newsService.get(id)); 
		return "success";
	}

}
