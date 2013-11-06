package com.linxs.lowrie.intefaces.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.common.base.Strings;
import com.kissme.core.web.controller.ControllerSupport;
import com.linxs.lowrie.application.channel.ChannelService;
import com.linxs.lowrie.domain.channel.Channel;

/**
 * 
 * @author Linxs
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class ChannelController extends ControllerSupport{
	
	@Autowired
	private ChannelService channelService;

	@RequestMapping(value = "/channel.do", method = RequestMethod.GET)
	public String channel(Model model) {
		List<Channel> result = channelService.query();
		model.addAttribute("result", result);
		return "admin/channel/channel";
	}
	
	@RequestMapping(value = "/channel-create.do", method = RequestMethod.GET)
	public String create(Model model) { 	
		model.addAttribute("channel", new Channel());  
		return "admin/channel/form";
	}
	
	@RequestMapping(value = "/channel-create.do", method = RequestMethod.POST)
	@ResponseBody
	public String create(Channel channel) {
		channelService.save(channel);
		return "success";
	}

	@RequestMapping(value = "/channel-child-create.do", method = RequestMethod.GET)
	public String createChildren(Model model, @RequestParam("id") int id) {
		model.addAttribute("channel", new Channel());
		model.addAttribute("fatherId", id);
		
		return "admin/channel/form";
	}
	
	@RequestMapping(value = "/channel-child-create.do", method = RequestMethod.POST)
	@ResponseBody
	public String createChildren(Channel childrenChannel, @RequestParam("fatherId")int fatherId) {
		channelService.save(childrenChannel.setFather(channelService.get(fatherId))); 
		return "success";
	}
	
	
	@RequestMapping(value = "/channel-delete.do", method = RequestMethod.POST) 
	@ResponseBody
	public String delete(@RequestParam("id") String id) {
		channelService.delete(id);
		return "success";
	}
	
	@RequestMapping(value = "/channel-edit.do", method = RequestMethod.GET)
	public String edit(Model model, @RequestParam("id") int id) {
		Channel channel = channelService.get(id);
		model.addAttribute("channel", channel);
		model.addAttribute("fatherId", channel.getFather() == null ? null : channel.getFather().getId());
		return "admin/channel/form";
	}
	
	@RequestMapping(value = "/channel-edit.do", method = RequestMethod.POST)
	@ResponseBody 
	public String edit(Channel channel, HttpServletRequest request) {
		try {
			if (!Strings.isNullOrEmpty(WebUtils.getCleanParam(request, "fatherId"))) {
				Channel father = channelService.get(Integer.valueOf(WebUtils.getCleanParam(request, "fatherId")));
				channelService.update(channel.setFather(father));
				return "success";
			}
			channelService.update(channel);
			return "success";
		} catch (Exception e) {
			return "fail";
		}
	}
	
}
