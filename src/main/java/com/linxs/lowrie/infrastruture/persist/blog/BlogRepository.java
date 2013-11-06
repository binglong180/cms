package com.linxs.lowrie.infrastruture.persist.blog;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.domain.blog.Blog;

/**
 * 
 * @author Linxs
 *
 */
public interface BlogRepository {

	void save(Blog blog);

	Page<Blog> queryPage(Page<Blog> page);

	Blog get(String id);  
	
}
  