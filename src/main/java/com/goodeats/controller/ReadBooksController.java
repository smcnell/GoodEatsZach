package com.goodeats.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodeats.model.ReadBooks;

@Controller
public class ReadBooksController {

	@RequestMapping(value = "/addReadBooks")
	public String addReadBooks(@ModelAttribute("readBooks") ReadBooks readBooks) {
		
		System.out.println("readbooks: "+ readBooks.getReadBooks());
		System.out.println("read authors: " + readBooks.getReadAuthor());
		System.out.println("rating: " + readBooks.getRating());
		return "addReadBooks";
	}
	
	

}

