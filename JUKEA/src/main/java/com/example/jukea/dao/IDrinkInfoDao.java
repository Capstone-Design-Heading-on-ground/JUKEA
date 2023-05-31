package com.example.jukea.dao;

import java.util.List;

import com.example.jukea.dto.DrinkInfoDto;

public interface IDrinkInfoDao {
	public List<DrinkInfoDto> getAllDrink();
	public List<DrinkInfoDto> searchByCategory();
	public List<DrinkInfoDto> searchBySulbti();
	public List<DrinkInfoDto> serachByName();
}
