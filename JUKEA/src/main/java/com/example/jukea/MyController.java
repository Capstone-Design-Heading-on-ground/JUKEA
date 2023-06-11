package com.example.jukea;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.jukea.service.IJukeaService;

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
	
	@RequestMapping("/login_member")
	public String login_member(Model model, HttpServletRequest request) {
		String page = "main";
		String id = request.getParameter("mid");
		String pw = request.getParameter("mpw");

		Map<String, String> map = new HashMap<String, String>();

		map.put("id", id);
		map.put("pw", pw);
		try 
		{
		bbs.login_Member(map);
		request.setAttribute("create", "login_in");
		}catch(Exception e)
		{
			page = "/login";
			request.setAttribute("create", "login_fail");
		}
		return page;
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
		String page = "login";
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
		request.setAttribute("create", "sign_in");
		return page;
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
		String resultContent = "";
		
		for(int i=0; i<arr.length; i++) {
			arr[i] = Integer.parseInt(request.getParameter(info[i]));
		}
		
		switch(arr[1]) {
		case 0:	resultContent += "과일향이 나고, ";
			break;
		case 1: resultContent += "곡물향이 나고, ";
			break;
		case 2: resultContent += "개성있는 특유의 향이 나고, ";
			break;
		case 3: resultContent += "알코올 향이 나고, ";
		}
		
		switch(arr[2]) {
		case 0:	resultContent += "맛있는 술에, ";
			break;
		case 1: resultContent += "적당한 술맛에, ";
			break;
		case 2: resultContent += "그냥 술맛에, ";
			break;
		}
		
		switch(arr[3]) {
		case 0:	resultContent += "값싸며  ";
			break;
		case 1: resultContent += "적당한 가격이며 ";
			break;
		case 2: resultContent += "조금 비싸며 ";
			break;
		case 3: resultContent += "많이 비싸며 ";
			break;
		}
		
		switch(arr[0]) {
		case 0:	resultContent += "소주를 선택한 ";
			break;
		case 1: resultContent += "맥주를 선택한 ";
			break;
		case 2: resultContent += "와인을 선택한 ";
			break;
		case 3: resultContent += "사케를 선택한 ";
			break;
		case 4: resultContent += "브랜디를 선택한 ";
			break;
		case 5: resultContent += "리큐르를 선택한 ";
			break;
		case 6: resultContent += "위스키를 선택한 ";
			break;
		}
		
		switch(arr[4]) {
		case 0: resultContent += "술찌인 당신";
			break;
		case 1: resultContent += "술을 좀 마시는 당신";
			break;
		case 2: resultContent += "술고래인 당신";
			break;
		}
			
		model.addAttribute("drinks",bbs.drink_searchBySulbti(arr));
		System.out.println(bbs.drink_searchBySulbti(arr));
		model.addAttribute("resultContent", resultContent);
		return "sulbtiresult";
	}
	
	@RequestMapping("/info")
	public String info(HttpServletRequest request, Model model) {
		int did = Integer.parseInt(request.getParameter("id"));
		model.addAttribute("drink",bbs.drink_getDrinkInfo(did));
		return "drinkInfo";
	}
	
}
