<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<title>찰칵 한글교실</title>

<style>
body {
	font-family: 'Gamja Flower', cursive;
}

a:link { color: white; text-decoration: none;}
 a:visited { color: white; text-decoration: none;}
 a:hover { color: white; text-decoration: none;}




#btn_cate1{
width : 250px;
height : 150px;
border-radius : 25%;
font-size : 80px;
color : white;
margin-left : 40%;
margin-top : 3%;
}

#btn_cate2,#btn_cate3,#btn_cate4{
width : 250px;
height : 150px;
border-radius : 25%;
font-size : 80px;
color : white;
margin-left : 40%;
margin-top : 3%;
}

</style>

</head>
<body style="background-color: #FFFDE5;">

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous"></script>


	<header>
		<!-- 占쏙옙占썩�ㅿ옙 占쏙옙占쏙옙 -->
		<nav class="navbar fixed-top navbar-light"
			style="background-color: #ffb115;">
			<div class="container">
	
				<a class="navbar-brand" href="main.jsp"> <img
					src="img/logo.png" alt="" class="d-inline-block align-text-top">
				</a>
				<%if(member == null){ %>
				<button class="btn btn-warning" style="color : #fff; font-size : 25px;" ><a href="login.jsp">로그인</a></button>
				<%} else {%>
				<div>
				<img src="img/kid.png" style="width : 40px;">
				<span style="font-size : 25px"><%=member.getName() %> (<%=member.getPoint() %>포인트)</span>
				<button class="btn btn-warning" style="color : #fff; font-size : 25px;"><a href="logout.jsp">로그아웃</a></button>
				<% } %>
				</div>
			</div>
		</nav>
	</header>
	<div class="container">
	<hr class="my-5">
		
		<div class = "cate1">
			<button id="btn_cate1" type="button"  class="btn btn-primary" onclick="location.href='word.jsp'">과일</button>
		</div>
		<div class = "cate2">
			<button id="btn_cate2" type="button"  class="btn btn-success" onclick="location.href='word3.jsp'"><span>공룡</span></button>
		</div>
		<div class = "cate3">
			<button id="btn_cate3" type="button"  class="btn btn-danger" onclick="location.href='word4.jsp'">자동차</button>
		</div>
		<div class = "cate4">
			<button id="btn_cate4" type="button"  class="btn btn-warning" onclick="location.href='word2.jsp'">동물</button>
		</div>
	</div>
				                         
</body>
</html>