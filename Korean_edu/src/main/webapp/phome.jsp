<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
MemberDTO member = (MemberDTO) session.getAttribute("member");
%>

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
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: 'Nanum Gothic Coding', monospace;
}

a:link {
	color: green;
	text-decoration: none;
}

a:visited {
	color: green;
	text-decoration: none;
}

a:hover {
	color: white;
	text-decoration: none;
}
</style>

</head>
<body style="background-color: #FFFDE5;">
	<header>
		<nav class="navbar fixed-top navbar-light"
			style="background-color: #e7ffd1;">
			<div class="container">

				<a class="navbar-brand" href="main.jsp"> <img src="img/logo.png"
					alt="" class="d-inline-block align-text-top">
				</a>

				<ul class="nav justify-content-center">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="phome.jsp">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="learn.jsp">학습현황</a></li>
					<li class="nav-item"><a class="nav-link" href="form.jsp">고객센터</a></li>
					<li class="nav-item"><a class="nav-link" href="mypage.jsp">마이페이지</a></li>
					<li class="nav-item">
						<%
						if (member == null) {
						%> <a class="nav-link" href="login.jsp"
						class="nav-link">로그인</a> <%
 } else {
 %> <a class="nav-link" href="logout.jsp"
						class="nav-link">로그아웃</a> <%
 }
 %>
					</li>
				</ul>

			</div>
		</nav>
	</header>

	<div class="container">

		<hr class="my-5">
		<hr class="my-5">
		<div style="text-align: center;">
			<img src="img/banner1.png" style="max-width : 100%; height : auto;"> <br>
			<br> <img src="img/banner2.png" style="max-width : 100%; height : auto;">
			<br>
			<br> <img src="img/about.png" style="max-width : 100%; height : auto;">
		</div>
	</div>

	<!-- footer -->
	<footer style="text-align: center; background-color: #e7ffd1;">
		<hr class="my-5">
		<p class="about" style="font-size: 15px">
			<a href="."><i class="fa fa-home"></i> (주) Best Team of SMHRD </a> |
			<a href="." rel="nofollow">광주광역시 남구 송하동</a> | <a href="."
				rel="nofollow">(062) 452-2736</a> | <a href="." rel="nofollow">Terms
				of Use</a> | <a href="." rel="nofollow">Privacy Policy</a>
		</p>
		<p></p>
		<hr class="my-5">
	</footer>
</body>
</html>