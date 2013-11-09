package com.linxs.lowrie.intefaces.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.linxs.lowrie.application.channel.ChannelService;
import com.linxs.lowrie.application.commodity.CommodityService;
import com.linxs.lowrie.application.resources.ResourcesService;
import com.linxs.lowrie.domain.Page;
import com.linxs.lowrie.domain.commodity.Commodity;

/**
 * 
 * @author Linxs
 *
 */
@Controller
public class HomeController {
	
	@Autowired
	private CommodityService commodityService;
	@Autowired
	private ChannelService channelService;
	@Autowired
	private ResourcesService resourcesService;
	
	@RequestMapping(value = {"/home.do", "/"}, method = RequestMethod.GET)
	public String linxs(Model model) {
		model.addAttribute("channelTop", channelService.queryTop());
		model.addAttribute("commoditys", commodityService.queryPage(new Page<Commodity>().setPageSize(6)));
		model.addAttribute("logo", resourcesService.getLogo());
		model.addAttribute("focusPictures", resourcesService.queryFocusPictures());
		return "home";
	}
	
}
