package com.linxs.lowrie.application.commodity.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.linxs.lowrie.application.commodity.CommodityService;
import com.linxs.lowrie.domain.Page;
import com.linxs.lowrie.domain.commodity.Commodity;
import com.linxs.lowrie.domain.commodity.CommodityAttribute;
import com.linxs.lowrie.domain.commodity.CommodityImage;
import com.linxs.lowrie.infrastruture.persist.commodity.CommodityAttributeRepository;
import com.linxs.lowrie.infrastruture.persist.commodity.CommodityImageRepository;
import com.linxs.lowrie.infrastruture.persist.commodity.CommodityRepository;

/**
 * 
 * @author Linxs
 *
 */
@Service
@Transactional
public class CommodityServiceImpl implements CommodityService {

	@Autowired
	private CommodityRepository commodityRepository;
	@Autowired
	private CommodityImageRepository commodityImageRepository;
	@Autowired
	private CommodityAttributeRepository commodityAttributeRepository;
	
	@Override
	@Transactional
	public void save(Commodity commodity) {
		commodityRepository.save(commodity);
		for(CommodityImage image : commodity.getImages()) {
			commodityImageRepository.save(image.setCommodity(commodity));
		}
		
		for(CommodityAttribute attribute : commodity.getAttributes()) {
			commodityAttributeRepository.save(attribute.setCommodity(commodity)); 
			for(CommodityAttribute value : attribute.getValues()) {
				commodityAttributeRepository.save(value.setKey(attribute).setCommodity(commodity)); 
			}
		}
	}

	@Override
	public Page<Commodity> queryPage(Page<Commodity> page) {
		return commodityRepository.queryPage(page);
	}

	@Override
	public Commodity get(int id) {
		return commodityRepository.get(id);
	}

	@Override
	@Transactional
	public void update(Commodity commodity) {
		commodityRepository.update(commodity);
		
		ensureCommodityDataIsClean(commodity.getId()); 
		
		for(CommodityImage image : commodity.getImages()) {
			commodityImageRepository.save(image.setCommodity(commodity));
		}
		
		for(CommodityAttribute key : commodity.getAttributes()) {
			commodityAttributeRepository.save(key.setCommodity(commodity)); 
			for(CommodityAttribute value : key.getValues()) {
				commodityAttributeRepository.save(value.setKey(key).setCommodity(commodity)); 
			}
		}
		
	}

	@Transactional
	private void ensureCommodityDataIsClean(String id) {
		commodityAttributeRepository.cleanAttributes(id);
		commodityImageRepository.cleanImages(id);
	}

	@Override
	@Transactional
	public void delete(Commodity commodity) {
		ensureCommodityDataIsClean(commodity.getId());
		commodityRepository.delete(commodity);
	}
	
	@Override
	public Commodity getSimpleCommodity(int id) {
		return commodityRepository.getSimpleCommodity(id);
	}

	@Override
	public Page<Commodity> queryPageByChannelName(String channelName, Page<Commodity> page) {
		return commodityRepository.queryPageByChannelName(channelName, page);
	}

	@Override 
	public Page<Commodity> queryPageById(int id, Page<Commodity> page) {
		return commodityRepository.queryPageById(id, page);
	}

}
