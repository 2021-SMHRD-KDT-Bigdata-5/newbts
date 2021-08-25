<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<% MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찰칵 한글교실</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<style>
body {
	font-family: 'Gamja Flower', cursive;
}

a:link { color: white; text-decoration: none;}
 a:visited { color: white; text-decoration: none;}
 a:hover { color: white; text-decoration: none;}
 
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 30px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #ff7f00;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #f26600}

.button:active {
  background-color: #f26600;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>

</head>
<body style="background-color: #FFFDE5;">
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
				</div>>
			</div>
		</nav>
	</header>
	<!-- 移대��硫��� -->
	<div class="container">
		<hr class="my-5">
		<hr class="my-5">
		<hr class="my-5">
		<div class="row row-cols-1 row-cols-md-5 g-4">
		<div class="col">
			<button class="button">1단계</button>
		</div>
		<div class="col">
			<button class="button">2단계</button>
		</div>
		<div class="col">
			<button class="button">3단계</button>
		</div>
		<div class="col">
			<button class="button">4단계</button>
		</div>
		<div class="col">
			<button class="button">5단계</button>
		</div>
		</div>
	</div>
</body>
</html>