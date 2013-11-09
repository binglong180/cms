package com.linxs.lowrie.application.user;

import com.linxs.lowrie.domain.user.User;

/**
 * 
 * @author Linxs
 *
 */
public interface UserService {

	public void register(User user);

	public User getByUsername(String username);

	public void update(User user);

	 
}  
