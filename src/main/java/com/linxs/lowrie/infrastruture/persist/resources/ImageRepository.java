package com.linxs.lowrie.infrastruture.persist.resources;

import java.util.List;

import com.linxs.lowrie.domain.resources.Image;

/**
 * 
 * @author Linxiaosheng
 *
 */
public interface ImageRepository {

	Image getLogo();
 
	List<Image> queryFocusPictures();

	Image get(int id);

	void update(Image image);  

}
