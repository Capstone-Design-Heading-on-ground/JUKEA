package com.example.jukea.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IMemberDao {
	public int insert_Member(Map<String, String> map);
	public int login_Member(Map<String, String> map);
}
