package com.linxs.lowrie.domain.commodity;

import java.util.List;

import com.kissme.core.domain.AbstractDomain;

/**
 * 
 * @author Linxs
 * 
 */
public class CommodityAttribute extends AbstractDomain {

	private static final long serialVersionUID = 1L;

	private String name;
	private List<CommodityAttribute> values;
	private CommodityAttribute key;
	private Commodity commodity;
	
	public Commodity getCommodity() {
		return commodity;
	}

	public CommodityAttribute setCommodity(Commodity commodity) {
		this.commodity = commodity;
		return this; 
	}

	public String getName() {
		return name;
	}

	public CommodityAttribute setName(String name) {
		this.name = name;
		return this; 
	}

	public List<CommodityAttribute> getValues() {
		return values;
	}

	public CommodityAttribute setValues(List<CommodityAttribute> values) {
		this.values = values;
		return this;
	}
 
	public CommodityAttribute getKey() { 
		return key;
	}

	public CommodityAttribute setKey(CommodityAttribute key) {
		this.key = key;
		return this;
	}

}
