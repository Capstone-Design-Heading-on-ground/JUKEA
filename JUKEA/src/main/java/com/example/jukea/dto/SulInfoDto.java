package com.example.jukea.dto;

import lombok.Data;

@Data
public class SulInfoDto {
	private int id;			//고유 PK 자동증가	ex) 5
	private String name;	//술 이름			ex) 매화
	private int price;		//술 가격			ex)	4500
	private float alchol;	//술 도수			ex) 7.5
	private String type;	//술 종류			ex) 소주
	private int flavor; 	//쓴 정도 (0~9)	ex) 4
	private String smell;	//술 향			ex) 매실향
	private String info;	//간단한 술 설명	ex) 매화수는 어쩌구 저쩌
	private String image;	//술 이미지 링크	ex) maehwa.png
}