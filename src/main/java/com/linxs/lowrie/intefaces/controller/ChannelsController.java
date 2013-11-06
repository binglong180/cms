package com.linxs.lowrie.intefaces.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.common.base.Strings;
import com.linxs.lowrie.application.channel.ChannelService;
import com.linxs.lowrie.application.commodity.CommodityService;
import com.linxs.lowrie.domain.Page;
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
	
	private static final String YAN_XUN_XIAO_DU = "1";
	private static final String BIN_CHONG_HAI_FANG_ZHI = "2";
	private static final String HU_XI_MIAN_JU = "3";

	@RequestMapping(value = "/channel.do", method = RequestMethod.GET)
	public String channel(Model model, @RequestParam("target")String target, HttpServletRequest request) {
		String pageNo = request.getParameter("pageNo");
		Page<Commodity> page = new Page<Commodity>();
		
		if(Strings.isNullOrEmpty(pageNo)) {  
			page.setPageNo(1).setPageSize(1);
		} else { 
			page.setPageNo(Integer.valueOf(pageNo)).setPageSize(1);
		}
		
		if(target.equals(YAN_XUN_XIAO_DU)) {
			page = commodityService.queryPageByChannelName("ÑÌÑ¬Ïû¶¾&ÅçÎí", page);
		}
		if(BIN_CHONG_HAI_FANG_ZHI.equals(target)) {
			page = commodityService.queryPageByChannelName("²¡³æº¦·ÀÖÎ", page);
		}
		if(HU_XI_MIAN_JU.equals(target)) {
			page = commodityService.queryPageByChannelName("ºôÎüÃæ¾ß", page);
		}
		
		model.addAttribute("page", page);
		model.addAttribute("target", target);
		model.addAttribute("channels", channelService.query());
		return "channel";
	}
	
	@RequestMapping(value = "/channel-child.do", method = RequestMethod.GET) 
	public String channelChild(Model model, @RequestParam("id")int id) {
		Page<Commodity> page = new Page<Commodity>().setPageNo(1).setPageSize(10);
		page = commodityService.queryPageById(id, page);
		model.addAttribute("page", page);
		model.addAttribute("channels", channelService.query());
		return "channel"; 
		
	}
	
	@RequestMapping(value = "/ulv.do", method = RequestMethod.GET) 
	public String ulv() {
		return "ulv";
	}
	
}
