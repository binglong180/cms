package com.linxs.lowrie.infrastruture.persist.commodity;

import com.linxs.lowrie.domain.Page;
import com.linxs.lowrie.domain.commodity.Commodity;

/**
 * 
 * @author Linxs
 *
 */
public interface CommodityRepository {
	
	public void save(Commodity commodity);

	public Page<Commodity> queryPage(Page<Commodity> page);

	public Commodity get(int id);   
 
	public void update(Commodity commodity);

	public void delete(Commodity commodity);

	Commodity getSimpleCommodity(int id);

	public Page<Commodity> queryPageByChannelName(String channelName, Page<Commodity> page);

	public Page<Commodity> queryPageById(int id, Page<Commodity> page); 
	 
} 
 