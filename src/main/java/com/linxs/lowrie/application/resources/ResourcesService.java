package com.linxs.lowrie.application.resources;

import java.util.List;

import com.linxs.lowrie.domain.resources.Image;

/**
 * 
 * @author Linxs
 *
 */
public interface ResourcesService {

	public Image getLogo();

	public List<Image> queryFocusPictures();

	public Image get(int id); 

	public void updateImage(Image image); 
 
}
