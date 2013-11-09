package com.linxs.lowrie.application.commodity;

import com.linxs.lowrie.domain.Page;
import com.linxs.lowrie.domain.commodity.Commodity;

/**
 * 
 * @author Linxs
 *
 */
public interface CommodityService {

	public void save(Commodity commodity);

	public Page<Commodity> queryPage(Page<Commodity> setPageSize);
 
	public Commodity get(int id); 

	public void update(Commodity commodity); 

	public void delete(Commodity commodity);
  
	public Commodity getSimpleCommodity(int id); 

	public Page<Commodity> queryPageById(int id, Page<Commodity> page);

	Page<Commodity> queryPageByChannelName(String channelName, Page<Commodity> page);

	public Page<Commodity> queryPageByChannelId(String id, Page<Commodity> page);

}
