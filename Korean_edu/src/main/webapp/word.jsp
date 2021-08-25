<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.MemberDTO"%>
<% MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재밌는 낱말퀴즈</title>

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/word.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
   <script src="//code.jquery.com/jquery-3.3.1.js"></script>
   
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
  background-color: #ffb115;
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
				</div>
			</div>
		</nav>
	</header>
<div class="container">
		<hr class="my-5">
		<hr class="my-5">
		<hr class="my-5">
		<div class="row row-cols-1 row-cols-md-5 g-4" style="text-align : center">
		<div class="col">
			<button class="button"> 과일 </button>
		</div>
		<div class="col">
			<button class="button"> 자동차 </button>
		</div>
		<div class="col">
			<button class="button"> 사물 </button>
		</div>
		<div class="col">
			<button class="button">   꽃  </button>
		</div>
		<div class="col">
			<button class="button"> 사람 </button>
		</div>
		</div>
		<div class="number" id="number_id">		
		</div>
		</div>
		
		<div class="problem" id="problem_id">			
		</div>
		
	
		<div class="answer" id="answer_id">			
		</div>
		
		<script src="js/word.js"></script>
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