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
  <link rel="stylesheet" href="${contextPath}/resources/css/sulinformation.css">
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
            	<c:choose>
            		<c:when test="${selectedCategory eq '위스키'}">
            			<input type="radio" id="whi" value="위스키" name="alc" checked="checked">
                	</c:when>
                	<c:otherwise>
                		<input type="radio" id="whi" value="위스키" name="alc">
                	</c:otherwise>       
                </c:choose>
                <label for="whi">위스키</label>
            </li>
            <li>
            	<c:choose>
            		<c:when test="${selectedCategory eq '와인'}">
            			<input type="radio" id="win" value="와인" name="alc" checked="checked">
                	</c:when>
                	<c:otherwise>
                		<input type="radio" id="win" value="와인" name="alc">
                	</c:otherwise>       
                </c:choose>
                <label for="win">와인</label>
            </li>
            <li>
                <c:choose>
            		<c:when test="${selectedCategory eq '사케'}">
            			<input type="radio" id="sak" value="사케" name="alc" checked="checked">
                	</c:when>
                	<c:otherwise>
                		<input type="radio" id="sak" value="사케" name="alc">
                	</c:otherwise>       
                </c:choose>
            	<label for="sak">사케</label>
            </li>
            <li>
            	<c:choose>
            		<c:when test="${selectedCategory eq '맥주'}">
            			<input type="radio" id="bee" value="맥주" name="alc" checked="checked">
                	</c:when>
                	<c:otherwise>
                		<input type="radio" id="bee" value="맥주" name="alc">
                	</c:otherwise>       
                </c:choose>
                <label for="bee">맥주</label>
            </li>
            <li>
              <c:choose>
            		<c:when test="${selectedCategory eq '브랜디'}">
            			<input type="radio" id="bra" value="브랜디" name="alc" checked="checked">
                	</c:when>
                	<c:otherwise>
                		<input type="radio" id="bra" value="브랜디" name="alc">
                	</c:otherwise>       
                </c:choose>
              <label for="bra">브랜디</label>
           </li>
            <li>
              <c:choose>
            		<c:when test="${selectedCategory eq '리큐르'}">
            			<input type="radio" id="win" value="리큐르" name="alc" checked="checked">
                	</c:when>
                	<c:otherwise>
                		<input type="radio" id="win" value="리큐르" name="alc">
                	</c:otherwise>       
                </c:choose>
                <label for="req">리큐르</label>
            </li>
            <li>
            	<c:choose>
              		<c:when test="${selectedCategory eq '소주'}">
            			<input type="radio" id="soj" value="소주" name="alc" checked="checked">
                	</c:when>
                	<c:otherwise>
                		<input type="radio" id="soj" value="소주" name="alc">
                	</c:otherwise>
                </c:choose>
                <label for="soj">소주</label>
              
           </li>
          </form>
        </ul>
    </div>
    <hr style="border: solid 1px white;">
<div class="sullist">
    <ul>
    	<c:forEach var="dto" items="${drinks}">
        	<li>
            	<ul class="sulimg">
                	<li>
                    	<a href="info?id=${dto.did}">
                        	<img width="180" height="180" src = "${contextPath}/resources/image/${dto.dimage}">
                    	</a>
                	</li>
               		<li>
                    	<a href="info?id=${dto.did}">${dto.dname}</a>
                    	<p><span>${dto.dprice}원</span></p>
                	</li>
            	</ul>
          	</li>
          </c:forEach>
  	</ul>
  <div class="page">
    <ul class="pagination modal">
      <li><a href="#" class="first">처음 페이지</a></li>
      <li><a href="#" class="arrow left"><<</a></li>
      <li><a href="#" class="active num">1</a></li>
      <li><a href="#" class="num">2</a></li>
      <li><a href="#" class="num">3</a></li>
      <li><a href="#" class="num">4</a></li>
      <li><a href="#" class="num">5</a></li>
      <li><a href="#" class="arrow right">>></a></li>
      <li><a href="#" class="last">끝 페이지</a></li>
    </ul>
	</div>
</div>
</body>
<script src="${contextPath}/resources/js/sulinformation5.js"></script>
</html>