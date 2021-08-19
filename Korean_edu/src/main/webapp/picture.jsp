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
	color: #1AAB8A;
}

button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #1AAB8A;
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

 <script type="text/javascript" src="vendor/jquery/jquery.js"></script>

</head>
<body style="background-color: #FFFDE5;">


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

		<div class="form_section">
			<div class="form_section_title">
				<label>상품 이미지</label>
			</div>
			<div class="form_section_content">
				<input type="file" id="fileItem" name='uploadFile'
					style="height: 30px;">
			</div>
		</div>

	<script>
		/* 이미지 업로드 */
		$("input[type='file']").on("change", function(e) {
			let fileInput = $('input[name="uploadFile"]');
			let fileList = fileInput[0].files;
			let fileObj = fileList[0];
			
			console.log("fileList : " + fileList);
			console.log("fileObj : " + fileObj);
		});
	</script>
</body>
</html>