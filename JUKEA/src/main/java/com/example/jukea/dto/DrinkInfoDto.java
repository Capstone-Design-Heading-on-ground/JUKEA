package com.example.jukea.dto;

import lombok.Data;

@Data
public class DrinkInfoDto {
	private int did;			//고유 PK 자동증가	ex) 5
	private String dname;	//술 이름			ex) 매화
	private int dprice;		//술 가격			ex)	4500
	private int damount;		//술 양			ex) 360
	private float dalchol;	//술 도수			ex) 7.5
	private String dtype;	//술 종류			ex) 소주
	private int dflavor; 	//쓴 정도 (0~9)	ex) 4
	private String dsmell;	//술 향			ex) 매실향
	private String dinfo;	//간단한 술 설명	ex) 매화수는 어쩌구 저쩌
	private String dimage;	//술 이미지 링크	ex) maehwa.png
	private String dorigin;
}