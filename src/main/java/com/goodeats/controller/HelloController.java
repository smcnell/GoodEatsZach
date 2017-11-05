package com.goodeats.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;



@Controller
public class HelloController {
	
	@org.springframework.web.bind.annotation.RequestMapping(value = "/greeting")
	public String sayHello(Model model) {
		
		model.addAttribute("greeting", "Hello World Controller");
		
		return "hello";
	}
}
