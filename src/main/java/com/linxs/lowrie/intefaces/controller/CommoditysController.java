package com.linxs.lowrie.intefaces.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
public class CommoditysController {
	
	@Autowired
	private CommodityService commodityService;
	@Autowired
	private ChannelService channelService;
	@Autowired
	private ResourcesService resourcesService;

	@RequestMapping(value = "/commodity.do", method = RequestMethod.GET)
	public String commodity(Model model, @RequestParam("id")int id) {
		Commodity commodity = commodityService.get(id);
		model.addAttribute("commodity", commodity);
		model.addAttribute("channelTop", channelService.queryTop());
		model.addAttribute("logo", resourcesService.getLogo());
		return "commodity";
	}
	
}
