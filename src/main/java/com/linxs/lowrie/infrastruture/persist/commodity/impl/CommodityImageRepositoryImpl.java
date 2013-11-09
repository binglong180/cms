package com.linxs.lowrie.infrastruture.persist.commodity.impl;

import org.springframework.stereotype.Repository;

import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.commodity.CommodityImage;
import com.linxs.lowrie.infrastruture.persist.commodity.CommodityImageRepository;

/**
 * 
 * @author Linxs
 *
 */
@Repository
public class CommodityImageRepositoryImpl extends MybatisRepositorySupport<Integer, CommodityImage> implements CommodityImageRepository {

	@Override
	public void save(CommodityImage image) {
		getSqlSession().insert(getNamespace() + ".save", image);
	}
	
	@Override
	public void update(CommodityImage image) {
		getSqlSession().update(getNamespace() + ".update", image);
	}
	
	@Override
	protected String getNamespace() {
		return "com.me.commodityImage";
	}

	@Override
	public void cleanImages(String id) {
		getSqlSession().delete(getNamespace() + ".clean", id);
	}

}
