package com.linxs.lowrie.infrastruture.persist.company.impl;

import org.springframework.stereotype.Repository;

import com.kissme.core.orm.mybatis.MybatisRepositorySupport;
import com.linxs.lowrie.domain.company.Company;
import com.linxs.lowrie.infrastruture.persist.company.CompanyRepositoty;

/**
 * 
 * @author Linxiaosheng
 *
 */
@Repository
public class CompanyRepositotyImpl extends MybatisRepositorySupport<Integer, Company> implements CompanyRepositoty {

	@Override
	protected String getNamespace() {
		return "com.me.company";
	}
	
	@Override
	public void update(Company company) {
		getSqlSession().update(getNamespace() + ".update", company);
	}

	@Override
	public Company getCompany() {
		return (Company) getSqlSession().selectOne(getNamespace() + ".getCompany");
	}

}
