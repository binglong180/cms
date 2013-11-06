package com.linxs.lowrie.infrastruture.persist.news;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.domain.news.News;

/**
 * 
 * @author Linxiaosheng
 *
 */
public interface NewsRepository {

	void save(News news); 

	Page<News> queryPage(Page<News> page);

	News get(int id);

	void update(News news);

	void delete(News news);

}
 