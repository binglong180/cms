package com.linxs.lowrie.domain.resources;

import com.kissme.core.domain.AbstractDomain;

/**
 * 
 * @author Linxiaosheng
 * 
 */
public class Image extends AbstractDomain {

	public static final int LOGO = 1;
	public static final int FOCUS = 0;

	private static final long serialVersionUID = -8517890333223519037L;
	private String path;
	private String title;
	private int type = FOCUS;

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
