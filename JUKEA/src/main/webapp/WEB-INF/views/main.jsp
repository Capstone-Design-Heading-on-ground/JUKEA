<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />  
<!DOCTYPE html>
<html>
<head>	
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="${contextPath}/resources/css/main.css">
</head>
<body>

<div class="mainheader">
    <h1>JUKEA</h1>
      <div class="head-title">
        <h4>밤은 길고 술은 달다 ★</h4>
      </div>
      <form method="post">
        <input type="text" name="serach" placeholder="필요하신 상품을 검색하세요"/>
        <a href="${contextPath}/login"><input type="button" name="login" value="로그인"></a>
        <a href="${contextPath}/signin"><input type="button" name="signin" value="회원가입"></a>
      </form>
      <div class="head-manu">
          <ul>
            <li><a href="${contextPath}/sulbti">술bti</a></li>
            <li><a href="${contextPath}/sulinformation">술information</a></li>
            <li><a href="${contextPath}/sulpricedif">술 가격비교</a></li>
          </ul>
      </div>
  </div>
  <div class="mainbody">
  </div>

</body>
</html>