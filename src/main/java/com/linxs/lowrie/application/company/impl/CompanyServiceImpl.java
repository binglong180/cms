package com.linxs.lowrie.application.company.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.linxs.lowrie.application.company.CompanyService;
import com.linxs.lowrie.domain.company.Company;
import com.linxs.lowrie.infrastruture.persist.company.CompanyRepositoty;

/**
 * 
 * @author Linxs
 *
 */
@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyRepositoty companyRepositoty;
	
	@Override
	public void update(Company company) {
		companyRepositoty.update(company);
	}

	@Override
	public Company getCompany() {
		return companyRepositoty.getCompany();
	}

}
