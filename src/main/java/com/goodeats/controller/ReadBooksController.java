package com.goodeats.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodeats.model.Activity;
import com.goodeats.model.ReadBooks;

@Controller
public class ReadBooksController {

	@RequestMapping(value = "/addReadBooks")
	public String addReadBooks(@ModelAttribute("readBooks") ReadBooks readBooks) {
		
		System.out.println("readbooks: "+ readBooks.getReadBooks());
		System.out.println("read authors: " + readBooks.getReadAuthor());
		System.out.println("rating: " + readBooks.getRating());
		System.out.println("activity: " + readBooks.getActivity());
		System.out.println("placesTried: " + readBooks.getPlacesTried());

		return "addReadBooks";
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

