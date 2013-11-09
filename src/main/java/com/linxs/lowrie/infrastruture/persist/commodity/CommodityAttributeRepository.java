package com.linxs.lowrie.infrastruture.persist.commodity;

import com.linxs.lowrie.domain.commodity.CommodityAttribute;

/**
 * 
 * @author Linxs
 *
 */
public interface CommodityAttributeRepository {

	public void save(CommodityAttribute attribute);

	public void update(CommodityAttribute attribute);

	public void cleanAttributes(String id); 
	 
}
