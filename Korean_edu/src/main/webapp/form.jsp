<%@page import="model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BoardDAO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
MemberDTO member = (MemberDTO) session.getAttribute("member");
BoardDAO dao = new BoardDAO();
ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
list = dao.showBoard();
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
						aria-current="page" href="pmain.jsp">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="learn.jsp">학습현황</a></li>
					<li class="nav-item"><a class="nav-link" href="form.jsp">고객센터</a></li>
					<li class="nav-item"><a class="nav-link" href="form.jsp">마이페이지</a></li>
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
			<img src="img/form.png" style="max-width : 100%; height : auto;">
		</div>

		<br>
		<br>
		<br>
		<br>
		<h1>고객센터</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col"></th>
					<th scope="col">번호</th>
					<th scope="col">아이디</th>
					<th scope="col">내용</th>
					<th scope="col">날짜</th>
				</tr>
			</thead>
			<tbody>
			<% for(int i = 0; i < list.size(); i++){ %>
				<tr>
					<td><%=i+1 %></td>
					<td><%=list.get(i).getWriter() %></td>
					<td><%=list.get(i).getContent() %></td>
					<td><%=list.get(i).getWritedate() %></td>
				</tr>
			<%} %>
			</tbody>
		</table>
		
		<br>
		<br>
		<br>
		<br>
		<hr class="my-5">
		<h1>문의사항을 남겨주세요 !</h1>
		<h5>찰칵한글교실에서 빠른 답변을 제공합니다</h5>
		<br>
		<br>
		<form class="row g-3" action="BoardCon">
			<div class="col-md-6">
				<label for="inputEmail4" class="form-label">답변 받을 메일</label> <input
					type="email" class="form-control" id="inputEmail4">

			</div>

			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="3"></textarea>
			</div>
		</form>
		<div style="text-align: right;">
			<button type="button" class="btn btn-secondary btn-lg">문의하기</button>
		</div>
	</div>
<!-- footer -->
	<footer style="text-align: center; background-color: #e7ffd1;">
		<hr class="my-5">
		<p class="about" style="font-size: 25px">
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