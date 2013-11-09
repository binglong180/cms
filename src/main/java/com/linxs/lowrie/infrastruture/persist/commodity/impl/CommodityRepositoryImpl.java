package com.linxs.lowrie.infrastruture.persist.commodity.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.Page;
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
		return page;
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
		List<Commodity> Commoditys = getSqlSession().selectList(getNamespace() + ".queryPageById", id);
		page.setResult(Commoditys);
		return page;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Page<Commodity> queryPageByChannelId(String id, Page<Commodity> page) {
		List<Commodity> commoditys = getSqlSession().selectList(getNamespace() + ".queryPageByChannelId", id);
		page.setResult(commoditys);
		return page;
	}
}
