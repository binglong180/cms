package com.linxs.lowrie.domain;

import java.math.BigDecimal;
import java.util.Collections;
import java.util.List;

import org.apache.commons.lang.StringUtils;

/**
 * @author Linxiaosheng
 */
public class Page<T> {

	public static final String ASC = "asc";
	public static final String DESC = "desc";

	protected int pageNo = 1;
	protected int pageSize = 1;
	protected String orderBy = null;
	protected String order = null;
	protected boolean autoCount = true;
	protected List<T> result = Collections.emptyList();
	protected long totalCount = -1;
	protected boolean isHasPre = false;
	protected boolean isHasNext = false;
	protected BigDecimal cashSum = new BigDecimal(0);

	public BigDecimal getCashSum() {
		return cashSum;
	}

	public void setCashSum(BigDecimal cashSum) {
		this.cashSum = cashSum;
	}

	public Page() {
	}

	public Page(final int pageSize) {
		setPageSize(pageSize);
	}

	public Page(final int pageSize, final boolean autoCount) {
		setPageSize(pageSize);
		setAutoCount(autoCount);
	}

	public int getPageNo() {
		return pageNo;
	}

	public Page<T> setPageNo(final int pageNo) {
		this.pageNo = pageNo;
		if (pageNo < 1) {
			this.pageNo = 1;
		}
		return this; 
	}

	public int getPageSize() {
		return pageSize;
	}

	public Page<T> setPageSize(final int pageSize) {
		this.pageSize = pageSize;
		if (pageSize < 1) {
			this.pageSize = 1;
		}
		return this; 
	}

	public int getFirst() {
		return ((pageNo - 1) * pageSize) + 1;
	}

	public String getOrderBy() {
		return orderBy;
	}
 
	public Page<T> setOrderBy(final String orderBy) {
		this.orderBy = orderBy;
		return this;
	}

	public boolean isOrderBySetted() {
		return (StringUtils.isNotBlank(orderBy) && StringUtils.isNotBlank(order));
	}

	public String getOrder() {
		return order;
	}

	public Page<T> setOrder(final String order) {
		String[] orders = StringUtils.split(StringUtils.lowerCase(order), ',');
		for (String orderStr : orders) {
			if (!StringUtils.equals(DESC, orderStr) && !StringUtils.equals(ASC, orderStr))
				throw new IllegalArgumentException("" + orderStr + "");
		}
		this.order = StringUtils.lowerCase(order);
		return this; 
	}

	public boolean isAutoCount() {
		return autoCount;
	}

	public Page<T> setAutoCount(final boolean autoCount) {
		this.autoCount = autoCount; 
		return this;
	}

	public List<T> getResult() {
		return result;
	}

	public Page<T> setResult(final List<T> result) {
		this.result = result;
		return this; 
	}

	public long getTotalCount() {
		return totalCount;
	}

	public Page<T> setTotalCount(final long totalCount) {
		this.totalCount = totalCount; 
		return this;
	}

	public long getTotalPages() {
		if (totalCount < 0)
			return -1;
		long count = totalCount / pageSize;
		if (totalCount % pageSize > 0) {
			count++;
		}
		return count;
	}

	public boolean getIsHasNext() {
		return (pageNo + 1 <= getTotalPages());
	}

	public int getNextPage() {
		return getIsHasNext() ? pageNo + 1 : pageNo;
	}

	public boolean getIsHasPre() {
		return (pageNo - 1 >= 1);
	}

	public int getPrePage() {
		return getIsHasPre() ? pageNo - 1 : pageNo;
	}
	
	
}
