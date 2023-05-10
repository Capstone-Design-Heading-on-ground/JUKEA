package com.example.jukea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	
	@RequestMapping("/")
	public String root() {
		return "main";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/signin")
	public String signin() {
		return "signin";
	}
	
	@RequestMapping("/sulbti")
	public String sulbti() {
		return "sulbti";
	}
	
	@RequestMapping("/sulinformation")
	public String sulinformation() {
		return "sulinformation";
	}
	
	@RequestMapping("/sulpricedif")
	public String sulpricedif() {
		return "sulpricedif";
	}
}
