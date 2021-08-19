<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
  <% MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>학부모 페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">

<style>

body {
	font-family: 'Nanum Gothic Coding', monospace;
}

a:link { color : green; text-decoration: none;}
 a:visited { color : green; text-decoration: none;}
 a:hover { color : white; text-decoration: none;}

</style>

</head>
<body style="background-color: #FFFDE5;">
<header>
		<nav class="navbar fixed-top navbar-light"
			style="background-color:#e7ffd1;">
			<div class="container">
	
				<a class="navbar-brand" href="main.jsp"> <img
					src="img/logo.png" alt="" class="d-inline-block align-text-top">
				</a>
				<%if(member == null){ %>
				<button class="btn btn-outline-success" style=" font-size : 25px;" ><a href="login.jsp">로그인</a></button>
				<%} else {%>
				<button class="btn btn-outline-success" style=" font-size : 25px;"><a href="logout.jsp">로그아웃</a></button>
				<% } %>
			</div>
		</nav>
	</header>
	
	<div class="container">
	
		<hr class="my-5">
		<hr class="my-5">
		<div style= "text-align: center;"><img src = "img/parents.png" style="position : center;"></div>
		
		<br><br><br><br>
		<h1>회원정보</h1>
		
	<table class="table table-striped">
 <thead>
    <tr>
     <th scope="col"></th>
      <th scope="col">이름</th>
      <th scope="col">나이</th>
      <th scope="col">가입일</th>
      <th scope="col">Score</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>이찬</td>
      <td>11세</td>
      <td>2021-08-01</td>
      <td>64</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>이호준</td>
      <td>12세</td>
      <td>2021-05-31</td>
      <td>202</td>
    </tr>
  </tbody>
</table>

<br><br><br><br>
<h1>우리 아이 진도</h1>
		
	<table class="table table-striped">
 <thead>
    <tr>
     <th scope="col"></th>
      <th scope="col">이름</th>
      <th scope="col">낱말퀴즈</th>
      <th scope="col">문장퀴즈</th>
      <th scope="col">사진 업로드 수</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>이찬</td>
      <td>2단계 - 문제 5</td>
      <td>1단계 - 문제 3</td>
      <td>8회</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>이호준</td>
      <td>4단계 - 문제 1</td>
      <td>1단계 - 문제 5</td>
      <td>7회</td>
    </tr>
  </tbody>
</table>
	</div>
</body>
</html>