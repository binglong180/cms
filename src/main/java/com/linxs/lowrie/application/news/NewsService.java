package com.linxs.lowrie.application.news;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.domain.news.News;

/**
 * 
 * @author Linxiaosheng
 *
 */
public interface NewsService {

	void save(News news);

	Page<News> queryPage(Page<News> page);

	News get(int id);

	void update(News news);

	void delete(News news); 
 
} 
  