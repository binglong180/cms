package com.linxs.lowrie.infrastruture.persist.commodity.impl;

import org.springframework.stereotype.Repository;

import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.commodity.CommodityAttribute;
import com.linxs.lowrie.infrastruture.persist.commodity.CommodityAttributeRepository;

/**
 * 
 * @author Linxiaosheng
 *
 */
@Repository
public class CommodityAttributeRepositoryImpl extends MybatisRepositorySupport<Integer, CommodityAttribute> implements CommodityAttributeRepository {

	@Override
	public void save(CommodityAttribute attribute) {
		getSqlSession().insert(getNamespace() + ".save", attribute);
	}
	
	@Override
	public void update(CommodityAttribute attribute) {
		getSqlSession().update(getNamespace() + ".update", attribute);
	}
	
	@Override
	protected String getNamespace() {
		return "com.me.commodityAttribute";
	}

	@Override
	public void cleanAttributes(String id) {
		getSqlSession().delete(getNamespace() + ".clean", id);
	}

}
