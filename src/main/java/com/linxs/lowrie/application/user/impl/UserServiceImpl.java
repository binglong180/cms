package com.linxs.lowrie.application.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.linxs.lowrie.application.user.UserService;
import com.linxs.lowrie.domain.user.User;
import com.linxs.lowrie.infrastruture.persist.user.UserRepository;

/**
 * 
 * @author Linxs
 *
 */
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public void register(User user) {
		userRepository.save(user);
	}

	@Override
	public User getByUsername(String username) {
		return userRepository.getByUsername(username);
	}

	@Override
	public void update(User user) {
		userRepository.update(user);
	}

}
