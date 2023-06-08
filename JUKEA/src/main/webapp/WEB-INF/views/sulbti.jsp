<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>술 MBTI</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="${contenxtPath}/resources/css/sulinformation.css">
  <link rel="stylesheet" href="${contextPath}/resources/css/sulbti3.css">
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
  <!-- 처음 페이지 -->
  <div id="content">
  <section id="main" >
    <h2>질문을 통해 자신과 맞는 술을 찾는</h2>
    <p> 추천 사이트 입니다!<br>
      아래에 있는 시작하기 버튼을 눌러 시작해주세요.</p>
    <button type="button" class="custom-btn btn-8" onclick="js:begin()">시작하기</button>
  </section>

  <!--질의 응답 페이지 -->
  <section id="qna">
    <div class="status">
      <div class="statusBar"></div>
    </div>
    
    <div class="qBox"></div>

    <div class="answerBox"></div>
  </section>

<!-- 결과 페이지 -->
<form action = "/findsul" method = "post">
  <section id="result">
    <h2>당신과 잘 어울리는 술은?</h2>
    <div class="resultName"></div>  
    <div class="resultDesc"></div>
    <button type="submit" >추천 술</button>
  </section>
  </form>
  </div>
  <script src="${contextPath}/resources/js/data3.js"></script>
  <script src="${contextPath}/resources/js/start.js"></script>
</body>
</html>