package com.linxs.lowrie.infrastruture.persist.commodity.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.google.common.collect.Maps;
import com.kissme.core.orm.Page;
import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.commodity.Commodity;
import com.linxs.lowrie.infrastruture.persist.commodity.CommodityRepository;

/**
 * 
 * @author Linxs
 *
 */
@Repository
public class CommodityRepositoryImpl extends MybatisRepositorySupport<Integer, Commodity> implements CommodityRepository {

	@Override
	public void save(Commodity commodity) {
		getSqlSession().insert(getNamespace() + ".save", commodity);
	}
	
	@Override
	public void update(Commodity commodity) {
		getSqlSession().update(getNamespace() + ".update", commodity);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Page<Commodity> queryPage(Page<Commodity> page) {
		List<Commodity> Commoditys = getSqlSession().selectList(getNamespace() + ".query", page);
		page.setResult(Commoditys);
		page.setTotalCount(getQueryCount());
		return page;
	}
	
	private int getQueryCount() {
		return getSqlSession().selectList(getNamespace() + ".query").size();
	}

	@Override
	protected String getNamespace() {
		return "com.me.commodity";
	}

	@Override
	public void delete(Commodity commodity) {
		getSqlSession().delete(getNamespace() + ".delete", commodity);
	}
	
	@Override
	public Commodity get(int id) {
		return (Commodity) getSqlSession().selectOne(getNamespace() + ".get", id); 
	}
	
	@Override
	public Commodity getSimpleCommodity(int id) {
		return (Commodity) getSqlSession().selectOne(getNamespace() + ".getSimpleCommodity", id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Page<Commodity> queryPageByChannelName(String channelName, Page<Commodity> page) {
		List<Commodity> Commoditys = getSqlSession().selectList(getNamespace() + ".queryPageByChannelName", channelName);
		page.setResult(Commoditys);
		return page;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Page<Commodity> queryPageById(int id, Page<Commodity> page) {
		Map<String, Object> params = Maps.newHashMap();
		params.put("id", id);
		page.setParams(params); 
		List<Commodity> Commoditys = getSqlSession().selectList(getNamespace() + ".queryPageById", page);
		page.setResult(Commoditys);
		return page;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Page<Commodity> queryPageByChannelId(String id, Page<Commodity> page) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		page.setParams(params);
		List<Commodity> commoditys = getSqlSession().selectList(getNamespace() + ".queryPageByChannelId", page);
		page.setResult(commoditys);
		page.setTotalCount(getCountByChannelId(id)); 
		return page;
	}
	
	public int getCountById(String id) {
		return getSqlSession().selectList(getNamespace() + ".queryCountPageById", id).size();
	}
	
	public int getCountByChannelId(String id) {
		return getSqlSession().selectList(getNamespace() + ".queryCountPageByChannelId", id).size();
	}
}
