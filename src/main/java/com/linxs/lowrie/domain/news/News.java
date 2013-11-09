package com.linxs.lowrie.domain.news;

import java.util.Date;

import com.kissme.core.domain.AbstractDomain;

/**
 * 
 * @author Linxs
 * 
 */
public class News extends AbstractDomain {

	private static final long serialVersionUID = 1L;

	private String title;
	private Date time;
	private String content;

	public String getTitle() {
		return title;
	}

	public News setTitle(String title) {
		this.title = title;
		return this;
	}

	public Date getTime() {
		return time;
	}

	public News setTime(Date time) {
		this.time = time;
		return this;
	}
 
	public String getContent() {
		return content;
	}

	public News setContent(String content) {
		this.content = content;
		return this;
	}

}
