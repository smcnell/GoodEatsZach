package com.goodeats.model;

public class TriedFood {
	
	private String placesTried;
	private String placesTriedType;
	private int placesTriedRating;
	private String placesTriedOrdered;


	public String getPlacesTriedOrdered() {
		return placesTriedOrdered;
	}

	public void setPlacesTriedOrdered(String placesTriedOrdered) {
		this.placesTriedOrdered = placesTriedOrdered;
	}

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
		
}
