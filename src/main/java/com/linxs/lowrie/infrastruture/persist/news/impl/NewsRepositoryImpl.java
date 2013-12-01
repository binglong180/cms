package com.linxs.lowrie.infrastruture.persist.news.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kissme.core.orm.Page;
import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.news.News;
import com.linxs.lowrie.infrastruture.persist.news.NewsRepository;

/**
 * 
 * @author Linxs
 * 
 */
@Repository
public class NewsRepositoryImpl extends MybatisRepositorySupport<Integer, News> implements NewsRepository {

	@Override
	public void save(News news) {
		getSqlSession().insert(getNamespace() + ".save", news);
	}
	
	@Override
	protected String getNamespace() {
		return "com.me.news";
	}
	
	@Override
	public void update(News news) {
		getSqlSession().update(getNamespace() + ".update", news);
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public Page<News> queryPage(Page<News> page) {
		List<News> news = getSqlSession().selectList(getNamespace() + ".query", page);
		page.setResult(news);
		page.setTotalCount(getQueryCount());
		return page;
	}

	private int getQueryCount() {
		return getSqlSession().selectList(getNamespace() + ".query").size();
	}

	@Override
	public News get(int id) {
		return (News) getSqlSession().selectOne(getNamespace() + ".get", id); 
	}
	
	@Override
	public void delete(News news) {
		getSqlSession().delete(getNamespace() + ".delete", news);
	}

}
