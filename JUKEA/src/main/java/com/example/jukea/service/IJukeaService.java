package com.example.jukea.service;

import java.util.List;
import java.util.Map;

import com.example.jukea.dto.DrinkInfoDto;
import com.example.jukea.dto.MemberDto;

public interface IJukeaService {
	public List<DrinkInfoDto> drink_getAllDrinks();
	public List<DrinkInfoDto> drink_searchByCategory(String selectedCategory);
	public List<DrinkInfoDto> drink_searchBySulbti(int[] arr);
	public List<DrinkInfoDto> drink_searchByName();
	public DrinkInfoDto drink_getDrinkInfo(int did);
	
	public int insert_Member(Map<String, String> map);
}
