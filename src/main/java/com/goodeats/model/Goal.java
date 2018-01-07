package com.goodeats.model;

import org.hibernate.validator.constraints.Range;

public class Goal {
	@Range(min = 1, max = 900)
	private int pages;

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}
	
	

}
