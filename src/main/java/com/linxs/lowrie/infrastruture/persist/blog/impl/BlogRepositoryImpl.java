package com.linxs.lowrie.infrastruture.persist.blog.impl;

import org.springframework.stereotype.Repository;

import com.kissme.core.orm.Page;
import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.blog.Blog;
import com.linxs.lowrie.infrastruture.persist.blog.BlogRepository;

/**
 * 
 * @author Linxs
 * 
 */
@Repository
public class BlogRepositoryImpl extends MybatisRepositorySupport<String, Blog> implements BlogRepository {
	
	@Override
	protected String getNamespace() {
		return "com.me.blog";
	}
	
	@Override
	public void save(Blog blog) {
		getSqlSession().insert(getNamespace() + ".save", blog);
	}

	@Override
	public Blog get(String id) { 
		return (Blog) getSqlSession().selectOne(getNamespace() + ".get", id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Page<Blog> queryPage(Page<Blog> page) {
		return page.setResult(getSqlSession().selectList(getNamespace() + ".queryPage", page));
	}
	
	
}
