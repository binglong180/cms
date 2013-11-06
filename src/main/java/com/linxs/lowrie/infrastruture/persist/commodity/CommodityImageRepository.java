package com.linxs.lowrie.infrastruture.persist.commodity;

import com.linxs.lowrie.domain.commodity.CommodityImage;

/**
 * 
 * @author Linxiaosheng
 *
 */
public interface CommodityImageRepository {

	public void save(CommodityImage image);

	public void update(CommodityImage image);
 
	public void cleanImages(String id); 
	
}
