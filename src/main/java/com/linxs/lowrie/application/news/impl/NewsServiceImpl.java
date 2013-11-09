package com.linxs.lowrie.application.news.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.application.news.NewsService;
import com.linxs.lowrie.domain.news.News;
import com.linxs.lowrie.infrastruture.persist.news.NewsRepository;

/**
 * 
 * @author Linxs
 *
 */
@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsRepository newsRepository;
	
	@Override
	public void save(News news) {
		newsRepository.save(news);
	}

	@Override
	public Page<News> queryPage(Page<News> page) {
		return newsRepository.queryPage(page);
	}

	@Override
	public News get(int id) {
		return newsRepository.get(id);
	}

	@Override
	public void update(News news) {
		newsRepository.update(news);
	}

	@Override
	public void delete(News news) {
		newsRepository.delete(news);
	}

}
