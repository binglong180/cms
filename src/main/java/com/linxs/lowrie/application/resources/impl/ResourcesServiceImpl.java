package com.linxs.lowrie.application.resources.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.linxs.lowrie.application.resources.ResourcesService;
import com.linxs.lowrie.domain.resources.Image;
import com.linxs.lowrie.infrastruture.persist.resources.ImageRepository;

/**
 * 
 * @author Linxs
 *
 */
@Service
public class ResourcesServiceImpl implements ResourcesService {
	
	@Autowired
	private ImageRepository imageRepository;

	@Override
	public Image getLogo() {
		return imageRepository.getLogo();
	}

	@Override
	public List<Image> queryFocusPictures() {
		return imageRepository.queryFocusPictures();
	}

	@Override
	public Image get(int id) {
		return imageRepository.get(id); 
	}

	@Override
	public void updateImage(Image image) {
		imageRepository.update(image);
	}

}
