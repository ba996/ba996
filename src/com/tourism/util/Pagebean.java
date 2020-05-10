package com.tourism.util;

import java.util.List;

public class Pagebean<T> {
	
	private List<T> data;
	
	private int pageNumber;
	
	private int totalRecord;
	
	private int pageSize;
	
	private int totalpage;

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalpage() {
		return (int)Math.ceil(totalRecord*1.0/pageSize);
	}

	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}

	public Pagebean(int pageNumber, int pageSize) {
		super();
		this.pageNumber = pageNumber;
		this.pageSize = pageSize;
	}
	
	
	
	
}
