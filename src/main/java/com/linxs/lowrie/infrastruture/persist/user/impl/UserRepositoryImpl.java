package com.linxs.lowrie.infrastruture.persist.user.impl;

import org.springframework.stereotype.Repository;

import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.user.User;
import com.linxs.lowrie.infrastruture.persist.user.UserRepository;

/**
 * 
 * @author Linxs
 *
 */
@Repository 
public class UserRepositoryImpl extends MybatisRepositorySupport<Integer, User> implements UserRepository {

	@Override
	protected String getNamespace() {
		return "com.me.user";
	}
	
	@Override
	public void save(User user) {
		getSqlSession().insert(getNamespace() + ".save", user);
	}

	@Override
	public User getByUsername(String username) {
		return (User) getSqlSession().selectOne(getNamespace() + ".getByUsername", username); 
	}
	
	@Override
	public void update(User user) {
		getSqlSession().update(getNamespace() + ".update", user);
	}

}
