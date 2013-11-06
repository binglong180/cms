package com.linxs.lowrie.application.blog;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.domain.blog.Blog;

/**
 * 
 * @author Linxs
 *
 */
public interface BlogService {  

	Page<Blog> queryPage(Page<Blog> setPageSize);

	void save(Blog blog);
  
	Blog get(String id);

	
}
 