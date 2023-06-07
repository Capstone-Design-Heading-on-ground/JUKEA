package com.example.jukea;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.jukea.service.IJukeaService;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MyController {
	
	@Autowired
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
	
	@RequestMapping("/insert_member")
	public String insert_member(Model model, HttpServletRequest request) {
		String id = request.getParameter("mid");
		String pw = request.getParameter("mpw");
		String name = request.getParameter("mname");
		String nickname = request.getParameter("mnickname");
		String h1 = request.getParameter("hp1");
		String h2 = request.getParameter("hp2");
		String h3 = request.getParameter("hp3");
		String phone = h1+"-"+h2+"-"+h3;
		String address = request.getParameter("maddress");
		String mail = request.getParameter("mmail");
		String birthday = request.getParameter("mbirthday");
		Map<String, String> map = new HashMap<String, String>();
		map.put("member1", id);
		map.put("member2", pw);
		map.put("member3", name);
		map.put("member4", nickname);
		map.put("member5", phone);
		map.put("member6", address);
		map.put("member7", mail);
		map.put("member8", birthday);
		
		bbs.insert_Member(map);
		
		return "main";
	}
	
	@RequestMapping("/sulbti")
	public String sulbti() {
		return "sulbti";
	}
	
	@RequestMapping("/sulinformation")
	public String sulinformation(HttpServletRequest request, Model model) {
		String selectedCategory = request.getParameter("selectedCategory");
		if("".equals(selectedCategory)||selectedCategory==null) {
			selectedCategory = "위스키";
		}
		model.addAttribute("drinks",bbs.drink_searchByCategory(selectedCategory));
		model.addAttribute("selectedCategory",selectedCategory);
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
	
	@RequestMapping("/info")
	public String info(HttpServletRequest request, Model model) {
		int did = Integer.parseInt(request.getParameter("id"));
		model.addAttribute("drink",bbs.drink_getDrinkInfo(did));
		return "drinkInfo";
	}
	
}
