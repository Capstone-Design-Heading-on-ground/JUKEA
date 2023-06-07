# JUKEA

### DB 쿼리문

create database jukea;  DB 생성

use jukea; DB 사용
#### 1.drinktable create 문
```
CREATE TABLE `jukea`.`t_drink` (
  `did` INT NOT NULL AUTO_INCREMENT,
  `dname` VARCHAR(45) NOT NULL,
  `dprice` INT NOT NULL,
  `damount` INT NOT NULL,
  `dalchol` INT NOT NULL,
  `dtype` VARCHAR(45) NOT NULL,
  `dflavor` INT NOT NULL,
  `dsmell` VARCHAR(45) NULL,
  `dinfo` VARCHAR(2000) NULL,
  `dimage` VARCHAR(200) NULL,
  `dorigin` VARCHAR(200) NULL,
  PRIMARY KEY (`did`));
```

#### 2. drinktable insert 문 (ex
```
insert into t_drink(dname,dprice,damount,dalchol,dtype,dflavor,dsmell,dinfo,dimage,dorigin) values('참이슬후레쉬', 1800 , 360 , 16.5 , '소주' , 4 , '알코올향' , '우리나라 대표 술 입니다.', 'fresh.jpg', '한국') ;
insert into t_drink(dname,dprice,damount,dalchol,dtype,dflavor,dsmell,dinfo,dimage) values('재임슨', 35800 , 700 , 40 , '위스키' , 6 , '씁쓸한 술향' , '제일 잘나가는 위스키 입니다.', 'jameson.jpg' '아일랜드') ;
insert into t_drink(dname,dprice,damount,dalchol,dtype,dflavor,dsmell,dinfo,dimage) values('샤도네이', 38000 , 750 , 13.5 , '와인' , 3 , '달콤한 포도향' , '와인중 왕 입니다.', 'chardonnay.jpg' '프랑스') ;
```

select * from t_drink; 으로 데이터 검색

