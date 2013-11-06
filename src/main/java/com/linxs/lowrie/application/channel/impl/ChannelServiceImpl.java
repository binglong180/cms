package com.linxs.lowrie.application.channel.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.application.channel.ChannelService;
import com.linxs.lowrie.domain.channel.Channel;
import com.linxs.lowrie.infrastruture.persist.ChannelRepository;

/**
 * 
 * @author Linxs
 *
 */
@Service
public class ChannelServiceImpl implements ChannelService {

	@Autowired 
	private ChannelRepository channelRepository;
	
	@Override
	public Channel get(int id) {
		return channelRepository.get(id);
	}

	@Override
	public void save(Channel channel) {
		channelRepository.save(channel);
	}

	@Override
	public void update(Channel channel) {
		channelRepository.update(channel);
	}

	@Override
	public void delete(String id) {
		channelRepository.delete(id);
	}

	@Override
	public List<Channel> query() {
		return channelRepository.query();
	}

	@Override
	public List<Channel> queryChildById(String id) {
		return channelRepository.queryChildById(id); 
	}

	@Override
	public Page<Channel> queryPage(Page<Channel> page) {
		return channelRepository.queryPage(page); 
	}
  
	@Override
	public List<Channel> queryTop() {
		return channelRepository.queryTop();
	}

}
