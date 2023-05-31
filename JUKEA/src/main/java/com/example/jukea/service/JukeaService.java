package com.example.jukea.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.jukea.dao.IDrinkInfoDao;
import com.example.jukea.dto.DrinkInfoDto;

@Service
public class JukeaService implements IJukeaService {
	
	@Autowired
	IDrinkInfoDao dao;

	@Override
	public List<DrinkInfoDto> drink_getAllDrinks() {
		return dao.getAllDrinks();
	}

	@Override
	public List<DrinkInfoDto> drink_searchByCategory() {
		return dao.searchByCategory();
	}

	@Override
	public List<DrinkInfoDto> drink_searchBySulbti(int[] arr) {
		return dao.searchBySulbti(arr);
	}

	@Override
	public List<DrinkInfoDto> drink_serachByName() {
		return dao.serachByName();
	}

}
