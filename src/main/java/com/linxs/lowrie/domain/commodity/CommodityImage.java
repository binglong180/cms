package com.linxs.lowrie.domain.commodity;

import com.kissme.core.domain.AbstractDomain;

/**
 * 
 * @author Linxs
 * 
 */
public class CommodityImage extends AbstractDomain {

	private static final long serialVersionUID = 1L;

	private String path;
	private Commodity commodity;
	
	public Commodity getCommodity() {
		return commodity;
	} 

	public CommodityImage setCommodity(Commodity commodity) {
		this.commodity = commodity;
		return this;
	}

	public String getPath() {
		return path;
	}

	public CommodityImage setPath(String path) {
		this.path = path;
		return this; 
	}

}
