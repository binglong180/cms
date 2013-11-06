package com.linxs.lowrie.infrastruture.persist.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kissme.core.orm.Page;
import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.channel.Channel;
import com.linxs.lowrie.infrastruture.persist.ChannelRepository;

/**
 * 
 * @author Linxs
 *
 */
@Repository
public class ChannelRepositoryImpl extends MybatisRepositorySupport<Integer, Channel> implements ChannelRepository {
	
	@Override
	protected String getNamespace() {
		return "com.me.channel";
	}
	
	@Override
	public Channel get(int id) {
		return (Channel) getSqlSession().selectOne(getNamespace() + ".getOne", id);
	}

	@Override
	public void save(Channel channel) {
		getSqlSession().insert(getNamespace() + ".save", channel);

	}

	@Override
	public void update(Channel channel) {
		getSqlSession().update(getNamespace() + ".update", channel);

	}

	@Override
	public void delete(String id) {
		getSqlSession().delete(getNamespace() + ".delete", id);
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Channel> queryChildById(String id) {
		return getSqlSession().selectList(getNamespace() + ".queryChildById", id); 
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Channel> query() {
		return getSqlSession().selectList(getNamespace() + ".query"); 
	} 

	@SuppressWarnings("unchecked")
	@Override
	public Page<Channel> queryPage(Page<Channel> page) {
		List<Channel> channels = getSqlSession().selectList(getNamespace() + ".query",page);
		page.setResult(channels);
		return page;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Channel> queryTop() {
		return getSqlSession().selectList(getNamespace() + ".queryTop"); 
	}

}
