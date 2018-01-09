package com.goodeats.model;

public class ReadBooks {
	
	private String readBooks;
	private String readAuthor;
	private String rating;
	private String activity;
	private String placesTried;
	private String placesTriedType;
	private int placesTriedRating;

	public String getPlacesTried() {
		return placesTried;
	}

	public String getPlacesTriedType() {
		return placesTriedType;
	}

	public void setPlacesTriedType(String placesTriedType) {
		this.placesTriedType = placesTriedType;
	}

	public int getPlacesTriedRating() {
		return placesTriedRating;
	}

	public void setPlacesTriedRating(int placesTriedRating) {
		this.placesTriedRating = placesTriedRating;
	}

	public void setPlacesTried(String placesTried) {
		this.placesTried = placesTried;
	}

	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	public String getReadAuthor() {
		return readAuthor;
	}

	public void setReadAuthor(String readAuthor) {
		this.readAuthor = readAuthor;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getReadBooks() {
		return readBooks;
	}

	public void setReadBooks(String readBooks) {
		this.readBooks = readBooks;
	}
		
}
