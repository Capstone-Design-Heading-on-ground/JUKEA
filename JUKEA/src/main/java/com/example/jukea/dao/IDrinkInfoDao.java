package com.example.jukea.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.jukea.dto.DrinkInfoDto;

@Mapper
public interface IDrinkInfoDao {
	public List<DrinkInfoDto> getAllDrinks();
	public List<DrinkInfoDto> searchByCategory(String selectedCategory);
	public List<DrinkInfoDto> searchBySulbti(int[] arr);
	public List<DrinkInfoDto> searchByName();
	public DrinkInfoDto getDrinkInfo(int id);
}
