<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>   
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign_in</title>
  <link rel="stylesheet" href="${contextPath}/resources/css/signinone.css">
</head>
<body>
    <div class="vanner">
    <center>
      <img src="${contextPath}/resources/image/jukea_logo.png" width="200">
    </center>
    <style>
    *{
      margin: 0%;
      padding: 0%;
    }
    .vanner {
      width: 100%;
      background-color: white;
      border-color: white;
    }
    </style>
  </div>
  <br>
<div class="login-page">
    <div class="form">
      <form action = insert_member method = post class="login-form">
        <label>아이디</label>
        <input type="text" id="pid" name = "mid" placeholder="아이디"/>
        <label>비밀번호</label>
        <input type="password" id="pwd" name = "mpw" placeholder="비밀번호" />
        <label>비밀번호 확인</label>
        <input type="password" id="ckpwd" placeholder="비밀번호 확인" />
        <label>닉네임</label>
        <input type="text" id="nname" name = "mnickname" placeholder="닉네임"/>
        <label>이름</label>
        <input type="text" id="pname" name="mname" placeholder="이름"/>
        <label>이메일</label>
        <input type="email" id="pemail" name="mmail" placeholder="이메일"/>
        <label>주소</label>
        <p><small>이벤트 당첨시 경품배송을 위해 정보를 <br>입력해주세요.</small></p>
        <input type="text" id="paddress" name = "maddress"/>
        <label>생년월일</label>
        <p><small>회원정보 수정 시 사용하니 정확한 정보를 <br>입력하세요.</small></p>
        <input type="date" id="mbirthday" name = "mbirthday"/>
        <label>전화번호</label>
        <div class="phone" id = "phone" name = "phone">
          <select id="hp1" name="hp1" required>
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
          </select>
          <input type="tel" id="hp2" name="hp2" maxlength="4">
          <input type="tel" id="hp3" name="hp3" maxlength="4">
        </div>
        <input type="submit" onClick="test()" value="회원가입" />
      </form>
    </div>
  </div>
  <script src="${contextPath}/resources/js/signin.js"></script>
</body>
</html>