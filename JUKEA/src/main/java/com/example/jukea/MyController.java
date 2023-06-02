package com.example.jukea;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.jukea.service.IJukeaService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MyController {
	IJukeaService bbs;
	
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
	
	@RequestMapping("/survayResult")
	public String survayResult(HttpServletRequest request, Model model) {
		int[] arr = new int[5];
		String[] info = {"type", "smell", "flavor", "price", "alchol"};
		for(int i=0; i<arr.length; i++) {
			arr[i] = Integer.parseInt(request.getParameter(info[i]));
		}
		model.addAttribute(bbs.drink_searchBySulbti(arr));
		return " ";
	}
	
}
