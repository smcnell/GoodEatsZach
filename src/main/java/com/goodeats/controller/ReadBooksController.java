package com.goodeats.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodeats.model.Activity;
import com.goodeats.model.FoodToTry;
import com.goodeats.model.TriedFood;

@Controller
public class ReadBooksController {

	@RequestMapping(value = "/addReadBooks")
	public String addReadBooks(@ModelAttribute("readBooks") TriedFood readBooks) {

		return "addReadBooks";
	}
	
	@RequestMapping(value = "/addFuturePlacesToEat")
	public String futurePlacesToEat(@ModelAttribute("foodToTry") FoodToTry foodToTry) {
		
		return "addFuturePlacesToEat";
	}
	
	
	@RequestMapping(value = "/activities", method = RequestMethod.GET)
	public @ResponseBody List<Activity> findAllActivities(){
		List<Activity> activities = new ArrayList<Activity>();
		
		Activity readNovel = new Activity();
		readNovel.setDesc("I'm reading a novel");
		activities.add(readNovel);
		
		Activity readPoem = new Activity();
		readPoem.setDesc("I'm reading a poem");
		activities.add(readPoem);
		
		Activity readNonFiction = new Activity();
		readNonFiction.setDesc("I'm reading non-fiction");
		activities.add(readNonFiction);
		
		return activities;
		
	}

}

