package com.linxs.lowrie.domain.blog;

import java.sql.Date;

import org.springframework.stereotype.Service;

import com.kissme.core.domain.AbstractDomain;

/**
 * 
 * @author Linxs
 * 
 */
@Service
public class Blog extends AbstractDomain {
	
	private static final long serialVersionUID = 1L;
	
	private String title;
	private String content;
	private String tag;
	private Date time;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
	
	public void create() {
//		blogRepository.save(this);
	}
	
}
