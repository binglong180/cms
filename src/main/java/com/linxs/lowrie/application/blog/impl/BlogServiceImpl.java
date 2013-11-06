package com.linxs.lowrie.application.blog.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kissme.core.orm.Page;
import com.linxs.lowrie.application.blog.BlogService;
import com.linxs.lowrie.domain.blog.Blog;
import com.linxs.lowrie.infrastruture.persist.blog.BlogRepository;

/**
 * 
 * @author Linxs
 *
 */
@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogRepository blogRepository;
	
	@Override
	public Page<Blog> queryPage(Page<Blog> page) {
		
		return blogRepository.queryPage(page);
	}

	@Override
	public void save(Blog blog) {
		blogRepository.save(blog); 
	}

	@Override
	public Blog get(String id) {
		return blogRepository.get(id);
	}

}
