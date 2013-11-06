package com.linxs.lowrie.application.channel;

import java.util.List;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.domain.channel.Channel;

/**
 * 
 * @author Linxs
 *
 */
public interface ChannelService {
	/**
	 * 
	 * @param id
	 * @return
	 */
	Channel get(int id);
	

	/**
	 * 
	 * @param channel
	 */
	void save(Channel channel);

	/**
	 * 
	 * @param channel
	 */
	void update(Channel channel);
	/**
	 * 
	 * @param id
	 */
	void delete(String id);


	/**
	 * 
	 * @param object
	 * @return
	 */
	List<Channel> query();
	 
	/**
	 *  
	 * @param id
	 * @return
	 */
	List<Channel> queryChildById(String id);


	/**
	 * 
	 * @param page
	 * @return
	 */
	Page<Channel> queryPage(Page<Channel> page);

	/**
	 * 
	 * @return
	 */
	List<Channel> queryTop(); 

 
}
