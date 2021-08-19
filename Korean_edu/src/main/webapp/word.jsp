<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap"
	rel="stylesheet">
<style>
body {
	font-family: 'Hahmlet', serif;
}

button {
	background: #ffe780;
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}

button:hover {
	background: #fff;
	color: #ffb115;
}

button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #ffe780;
	transition: 400ms ease all;
}

button:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
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
		<!-- ���⑤� ���� -->
		<nav class="navbar navbar-fixed-top" id="nav1"
			style="background-color: #ffb115;">
			<div class="container">
				<hr class="my-5">
				<a class="navbar-brand" href="#"> <img
					src="/docs/5.1/assets/brand/bootstrap-logo.svg" alt="" width="30"
					height="24" class="d-inline-block align-text-top"
					style="position: center;"> Bootstrap
				</a>
			</div>
		</nav>
	</header>
	<!-- 移대��硫��� -->
	<div class="container">
		<hr class="my-5">
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<button>1단계</button>
			<button>2단계</button>
			<button>3단계</button>
			<button>4단계</button>
			<button>5단계</button>
		</div>
	</div>
</body>
</html>