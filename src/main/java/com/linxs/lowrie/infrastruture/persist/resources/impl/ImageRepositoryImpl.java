package com.linxs.lowrie.infrastruture.persist.resources.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.resources.Image;
import com.linxs.lowrie.infrastruture.persist.resources.ImageRepository;

/**
 * 
 * @author Linxiaosheng
 *
 */
@Repository
public class ImageRepositoryImpl extends MybatisRepositorySupport<Integer, Image> implements ImageRepository {

	@Override
	public Image getLogo() {
		return (Image) getSqlSession().selectOne(getNamespace() + ".getLogo");
	}
	
	@Override
	protected String getNamespace() {
		return "com.me.image";
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Image> queryFocusPictures() {
		return getSqlSession().selectList(getNamespace() + ".queryFocusPictures");
	}

	@Override
	public Image get(int id) {
		return (Image) getSqlSession().selectOne(getNamespace() + ".get"); 
	}

	
	
}
