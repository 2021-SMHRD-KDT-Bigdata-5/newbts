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
				<span style="font-size : 25px"><%=member.getName() %> 친구, 안녕하세요!</span>
				<button class="btn btn-warning" style="color : #fff; font-size : 25px;"><a href="logout.jsp">로그아웃</a></button>
				<% } %>
			</div>
		</nav>
	</header>
	<!-- 燁삳��占쏙옙筌�占쏙옙占� -->
	<div class="container">
		<hr class="my-5">
		<hr class="my-5">
		<hr class="my-5">
		<div class="row row-cols-1 row-cols-md-2 g-4">
			<div class="col">
				<div class="card">
					<a href="word.jsp"><img src="img/word.png" class="card-img-top" alt="..."></a>

				</div>
			</div>
			<div class="col">
				<div class="card">
					<a href = "sentence.jsp"><img src="img/sentence.png" class="card-img-top" alt="..."></a>

				</div>
			</div>
			<div class="col">
				<div class="card">
					<a href = "picture.jsp"><img src="img/picture.png" class="card-img-top" alt="..."></a>

				</div>
			</div>
			<div class="col">
				<div class="card">
					<img src="img/game.png" class="card-img-top" alt="...">

				</div>
			</div>
		</div>
	</div>
	<hr class="my-5">
	<!-- footer -->
	<footer style="text-align: center; background-color: #ffb115;">
		<hr class="my-5">
		<p class="about" style="font-size : 25px" >
			<a href="."><i class="fa fa-home"></i> (주) Best Team of SMHRD </a> | <a href="."
				rel="nofollow">광주광역시 남구 송하동</a> | <a href="." rel="nofollow">(062) 452-2736</a> |
			<a href="." rel="nofollow">Terms of Use</a> | <a href="."
				rel="nofollow">Privacy Policy</a>
		</p>
		<p></p>
		<hr class="my-5">
	</footer>


</body>
</html>