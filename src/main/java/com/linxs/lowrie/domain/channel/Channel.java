package com.linxs.lowrie.domain.channel;

import java.util.ArrayList;
import java.util.List;

import com.kissme.core.domain.AbstractDomain;

/**
 * 
 * @author Linxs
 * 
 */
public class Channel extends AbstractDomain {

	private static final long serialVersionUID = 1L;
	private Channel father;
	private List<Channel> children = new ArrayList<Channel>();
	private String name;

	public Channel getFather() {
		return father; 
	}

	public Channel setFather(Channel father) {
		this.father = father;
		return this;
	}

	public List<Channel> getChildren() {
		return children;
	}

	public Channel setChildren(List<Channel> children) {
		this.children = children;
		return this;
	}

	public String getName() {
		return name;
	}

	public Channel setName(String name) { 
		this.name = name;
		return this;
	}

}
