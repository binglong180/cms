package com.linxs.lowrie.infrastruture.persist.company;

import com.linxs.lowrie.domain.company.Company;

/**
 * 
 * @author Linxs
 *
 */
public interface CompanyRepositoty {

	public void update(Company company);

	public Company getCompany();
	
}
