package com.example.jukea.dao;

import java.util.List;

import com.example.jukea.dto.PagingDto;

public interface IPagingDao {
	public int countBoard();	
	public List<PagingDto> selectBoard(PagingDto dto);
}
