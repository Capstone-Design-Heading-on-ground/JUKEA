package com.example.jukea.service;

import java.util.List;

import com.example.jukea.dto.DrinkInfoDto;

public interface IJukeaService {
	public List<DrinkInfoDto> drink_getAllDrinks();
	public List<DrinkInfoDto> drink_searchByCategory();
	public List<DrinkInfoDto> drink_searchBySulbti(int[] arr);
	public List<DrinkInfoDto> drink_serachByName();
}
