package com.linxs.lowrie.infrastruture.persist.user;

import com.linxs.lowrie.domain.user.User;

/**
 * 
 * @author Linxs
 *
 */
public interface UserRepository {

	public void save(User user);

	public User getByUsername(String username); 

	public void update(User user);
	
}
 