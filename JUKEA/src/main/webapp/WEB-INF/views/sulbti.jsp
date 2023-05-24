<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="stylesheet" href="${contextPath}/resources/css/sulbti.css">
    <title>술 MBTI</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="../css/sulinformation.css">
</head>
<body>
  <!-- 처음 페이지 -->
  <section id="main" >
    <h2>질문을 통해 자신과 맞는 술을 찾는</h2>
    <p> 추천 사이트 입니다!<br>
      아래에 있는 시작하기 버튼을 눌러 시작해주세요.</p>
    <button type="button" class="btn btn-light mt-3" onclick="js:begin()">시작하기</button>
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
  <script src="${contextPath}/resources/js/data.js"></script>
  <script src="${contextPath}/resources/js/start.js"></script>
</body>
</html>