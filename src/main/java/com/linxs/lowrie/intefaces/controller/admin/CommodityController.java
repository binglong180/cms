package com.linxs.lowrie.intefaces.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.common.collect.Lists;
import com.linxs.lowrie.application.channel.ChannelService;
import com.linxs.lowrie.application.commodity.CommodityService;
import com.linxs.lowrie.domain.Page;
import com.linxs.lowrie.domain.channel.Channel;
import com.linxs.lowrie.domain.commodity.Commodity;
import com.linxs.lowrie.domain.commodity.CommodityAttribute;
import com.linxs.lowrie.domain.commodity.CommodityImage;

/**
 * 
 * @author Linxs
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class CommodityController {
	
	@Autowired
	private ChannelService channelService;
	
	@Autowired
	private CommodityService commodityService;
	
	@RequestMapping(value = "/commodity.do", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request) {
		Page<Commodity> page = new Page<Commodity>();
		int pageNo = WebUtils.getCleanParam(request, "pageNo") == null ? 0 : Integer.valueOf(WebUtils.getCleanParam(request, "pageNo"));
		page = commodityService.queryPage(page.setPageNo(pageNo).setPageSize(10));
		model.addAttribute("channels", channelService.queryTop());
		model.addAttribute("page", page); 
		return "admin/commodity/list";
	}
	
	@RequestMapping(value = "/commodity-publish-channel.do", method = RequestMethod.GET)
	@ResponseBody
	public List<Channel> queryChild(Model model, @RequestParam("id")String id) {
		return channelService.queryChildById(id);
	}
	
	@RequestMapping(value = "/commodity-remove.do", method = RequestMethod.POST)
	@ResponseBody
	public String remove(@RequestParam("id")int id) {
		commodityService.delete(commodityService.getSimpleCommodity(id));
		return "success";
	}
	
	@RequestMapping(value = "/commodity-publish.do", method = RequestMethod.GET)
	public String publish(Model model, @RequestParam("id")int id) {
		model.addAttribute("commodity", new Commodity().setChannel(channelService.get(id)));
		return "admin/commodity/create";
	}
	
	@RequestMapping(value = "/commodity-publish.do", method = RequestMethod.POST)
	@ResponseBody
	public String publish(@RequestParam("commodityName")String commodityName,
						  @RequestParam("images")String images,
						  @RequestParam("attributes")String attributes, 
						  @RequestParam("describe")String describe,
						  @RequestParam("price")double price,
						  @RequestParam("channelId")int channelId) {
		
		List<CommodityAttribute> commodityAttributes = handleAttributes(attributes);
		List<CommodityImage> commodityImages = handleImages(images);
		
		Commodity commodity = new Commodity().setCommodityName(commodityName)
											 .setPrice(price)
											 .setChannel(channelService.get(channelId))
											 .setAttributes(commodityAttributes)
											 .setDescribed(describe.replaceAll("\"", "'"))
											 .setImages(commodityImages);
		
		commodityService.save(commodity);
		return "success";
	}
	
	@RequestMapping(value = "/commodity-update.do", method = RequestMethod.GET)
	public String update(@RequestParam("id")int id, Model model) {
		
		Commodity commodity = commodityService.get(id);
		model.addAttribute("commodity", commodity);
		
		return "admin/commodity/update";
		
	}
	
	@RequestMapping(value = "/commodity-update.do", method = RequestMethod.POST)
	@ResponseBody
	public String update(@RequestParam("commodityName")String commodityName,
						 @RequestParam("images")String images,
						 @RequestParam("attributes")String attributes, 
						 @RequestParam("describe")String describe,
						 @RequestParam("price")double price,
						 @RequestParam("channelId")int channelId,
						 @RequestParam("id")int id) {
		
		List<CommodityAttribute> commodityAttributes = handleAttributes(attributes);
		List<CommodityImage> commodityImages = handleImages(images);
		
		Commodity commodity = commodityService.get(id).setCommodityName(commodityName)
											 .setPrice(price)
											 .setChannel(channelService.get(channelId))
											 .setAttributes(commodityAttributes)
											 .setDescribed(describe.replaceAll("\"", "'"))
											 .setImages(commodityImages);
		
		commodityService.update(commodity);
		
		return "success";
	}

	private List<CommodityImage> handleImages(String images) {
		List<CommodityImage> result = Lists.newArrayList();
		for(String image : images.split(";")) {
			result.add(new CommodityImage().setPath(image));
		}
		return result;
	}

	private List<CommodityAttribute> handleAttributes(String attributes) {
		
		List<CommodityAttribute> result = Lists.newArrayList();
		
		for(String item : attributes.split("\\|")) {
			if(StringUtils.isEmpty(item)) {
				continue;
			}
			String key = item.substring(0, item.indexOf(":"));
			
			List<CommodityAttribute> values = Lists.newArrayList();
			for(String value : item.substring(item.indexOf(":") + 1, item.length()).split(";")) {
				values.add(new CommodityAttribute().setName(value));
			}
			
			result.add(new CommodityAttribute().setName(key).setValues(values));
		}
		return result;
	}

}
