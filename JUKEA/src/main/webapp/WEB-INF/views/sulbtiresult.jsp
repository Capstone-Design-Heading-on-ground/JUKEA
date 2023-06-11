<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="${contextPath}/resources/css/sulbitiresult.css">
</head>
<body>
    <div class="mainheader">
        <div class="head-title">	
          <h1>JUKEA</h1>
          <h4>밤은 길고 술은 달다 ★</h4>
        </div>
    </div>
    <div class="search">
        <input type = "text" value=" 술 이름을 입력하세요" style="width:400px;height:30px;font-size:15px;">
        <input type = "submit" value="검색" style="height:30px; width: 50px;">
    </div>
    <div class="sul">
        <ul class="banner">
          <form>
            <li>
            <input type="radio" id="whi" value="위스키" name="alc" checked="checked">
                <label for="whi">위스키</label>
            </li>
            <li>
              <input type="radio" id="win" name="alc" value="와인">
                  <label for="win">와인</label>
            </li>
            <li>
              <input type="radio" id="sak" name="alc" value="사케">
                  <label for="sak">사케</label>
            </li>
            <li>
              <input type="radio" id="bee" name="alc" value="맥주">
                  <label for="bee">맥주</label>
            </li>
            <li>
              <input type="radio" id="bra" name="alc" value="브랜디">
                  <label for="bra">브랜디</label>
           </li>
            <li>
              <input type="radio" id="req" name="alc" value="리큐르">
                  <label for="req">리큐르</label>
            </li>
            <li>
              <input type="radio" id="soj" name="alc" value="소주">
                  <label for="soj">소주</label>
           </li>
          </form>
        </ul>
    </div>
    <div class="imgplace">
      <a href="info?id=${drinks[0].did}">
      <img width="400" height="400" src = "${contextPath}/resources/image/${drinks[0].dimage}">
      </a>
    </div>
    <div class="infoplace">
      <p>${resultContent}</p>
      <p>술BTI결과로 나온 술은 <span class="sulname"><a href="info?id=${drinks[0].did}">${drinks[0].dname}</a></span>입니다.</p>
      <p>또 검색된 비슷한 술 : <span class="sulname">
      <c:forEach var="drink" items="${drinks}" varStatus="status" begin="1">
      	<a href="info?id=${drink.did}">${drink.dname}</a> 
      </c:forEach>
      </span>
    </div>
</body>
</html>