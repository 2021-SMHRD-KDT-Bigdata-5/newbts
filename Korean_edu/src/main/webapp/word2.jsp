<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.MemberDTO"%>
<% MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/word.css" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
   <script src="//code.jquery.com/jquery-3.3.1.js"></script>
   <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<style>
body {
	font-family: 'Gamja Flower', cursive;
	background-color: #FFFDE5;
}

a:link { color: white; text-decoration: none;}
 a:visited { color: white; text-decoration: none;}
 a:hover { color: white; text-decoration: none;}
</style>


</head>
<body>
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

		<div class="number" id="number_id">		
		</div>
		
		
		<div class="problem" id="problem_id">			
		</div>
		
	
		<div class="answer" id="answer_id">			
		</div>
		
		<script src="js/word2.js"></script>
		<script>
		</script>
	
	                                       
</body>
</html>