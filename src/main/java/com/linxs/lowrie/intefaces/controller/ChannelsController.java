package com.linxs.lowrie.intefaces.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.common.base.Strings;
import com.google.common.primitives.Ints;
import com.kissme.core.orm.Page;
import com.linxs.lowrie.application.channel.ChannelService;
import com.linxs.lowrie.application.commodity.CommodityService;
import com.linxs.lowrie.application.resources.ResourcesService;
import com.linxs.lowrie.domain.commodity.Commodity;

/**
 * 
 * @author Linxs
 *
 */
@Controller
public class ChannelsController {
	
	@Autowired
	private ChannelService channelService;
	@Autowired
	private CommodityService commodityService;
	@Autowired
	private ResourcesService resourcesService;
	
	private static final int PAGE_SIZE = 9;
	

	@RequestMapping(value = "/channel.do", method = RequestMethod.GET)
	public String channel(Model model, @RequestParam("id")String id, HttpServletRequest request) {
		Page<Commodity> page = new Page<Commodity>();
		
		String pageNo = request.getParameter("pageNo");
		if(Strings.isNullOrEmpty(pageNo)) {  
			page.setPageNo(1).setPageSize(PAGE_SIZE);
		} else { 
			page.setPageNo(Ints.tryParse(pageNo)).setPageSize(PAGE_SIZE);
		}
		 
		page = commodityService.queryPageByChannelId(id, page);
		
		model.addAttribute("page", page);
		model.addAttribute("target", id);
		model.addAttribute("channels", channelService.query());
		model.addAttribute("channelTop", channelService.queryTop());
		model.addAttribute("logo", resourcesService.getLogo());
		return "channel";
	}
	
	@RequestMapping(value = "/channel-child.do", method = RequestMethod.GET) 
	public String channelChild(Model model, @RequestParam("id")int id, HttpServletRequest request) {
		
		String pageNo = request.getParameter("pageNo");
		Page<Commodity> page = new Page<Commodity>();
		
		if(Strings.isNullOrEmpty(pageNo)) {  
			page.setPageNo(1).setPageSize(PAGE_SIZE);
		} else {  
			page.setPageNo(Ints.tryParse(pageNo)).setPageSize(PAGE_SIZE);
		}
		
		page = commodityService.queryPageById(id, page);
		model.addAttribute("page", page);
		model.addAttribute("channels", channelService.query());
		model.addAttribute("channelTop", channelService.queryTop());
		model.addAttribute("logo", resourcesService.getLogo());
		model.addAttribute("target", id);
		model.addAttribute("flag", "child");
		return "channel"; 
		
	}
	
	@RequestMapping(value = "/ulv.do", method = RequestMethod.GET) 
	public String ulv(Model model) {
		model.addAttribute("channelTop", channelService.queryTop());
		model.addAttribute("logo", resourcesService.getLogo());
		return "ulv";
	}
	
}
