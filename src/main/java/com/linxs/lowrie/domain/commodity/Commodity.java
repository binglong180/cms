package com.linxs.lowrie.domain.commodity;

import java.util.List;

import com.kissme.core.domain.AbstractDomain;
import com.linxs.lowrie.domain.channel.Channel;

/**
 * 
 * @author Linxs
 * 
 */
public class Commodity extends AbstractDomain {

	private static final long serialVersionUID = 1L;

	private String commodityName;
	private Channel channel;
	private double price;
	private String described;
	private List<CommodityImage> images;
	private List<CommodityAttribute> attributes;

	public List<CommodityAttribute> getAttributes() {
		return attributes;
	}

	public Commodity setAttributes(List<CommodityAttribute> attributes) {
		this.attributes = attributes;
		return this;
	}

	public String getCommodityName() {
		return commodityName;
	}

	public Commodity setCommodityName(String commodityName) {
		this.commodityName = commodityName;
		return this;
	}

	public Channel getChannel() {
		return channel;
	}

	public Commodity setChannel(Channel channel) {
		this.channel = channel;
		return this;
	}

	public double getPrice() {
		return price;
	}

	public Commodity setPrice(double price) {
		this.price = price;
		return this;
	}

	public String getDescribed() {
		return described;
	}

	public Commodity setDescribed(String described) {
		this.described = described;
		return this;
	}

	public List<CommodityImage> getImages() {
		return images;
	}

	public Commodity setImages(List<CommodityImage> images) {
		this.images = images;
		return this;
	}

}
