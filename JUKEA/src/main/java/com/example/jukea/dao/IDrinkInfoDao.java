package com.example.jukea.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.jukea.dto.DrinkInfoDto;

@Mapper
public interface IDrinkInfoDao {
	public List<DrinkInfoDto> getAllDrinks();
	public List<DrinkInfoDto> searchByCategory();
	public List<DrinkInfoDto> searchBySulbti();
	public List<DrinkInfoDto> serachByName();
}
